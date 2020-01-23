Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B7E1474E7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 00:40:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NXpDQIT6FR1hx5P3TZCaDVnqMj3Pdb09li0sItpZdkk=; b=Q+olJtSELaQjlo
	tjr/TBK55COj0b1fP2kyUP7tDoNneYPdrLjHMRm/gKmwirnAeEuBG8+b/70JshxngTgEN6BAXILan
	u2ncpLsanYKQRar6Z25g3AbmbfdeD+vv9MrmCUm0DQuEfEIg3WjVTmSH22q8a6x81ZT2BrhIJAW/8
	DE1X9YLN36+yFMJLt/TuVbuDFAbSKb4MjH0PsjkvniSOscQqPeUiqmX0fRuTfnmChTFYUqaFb7Q99
	0094QVxz1346r3T/3SBcwGUIsSMf5QL+z6Jgx3LZlrp5QhRjqfckVBKHh1liE8dWSQo/w+1baBL6s
	253VihuWh0jhaYVfb/Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ium5W-00088g-RF; Thu, 23 Jan 2020 23:40:38 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ium5K-00088C-3A
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 23:40:27 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00NNddRX162728;
 Thu, 23 Jan 2020 23:39:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2019-08-05; bh=LuHOXPa0REgKt+N/61X5+EaaF8izuIJBTiFn/CQUE9c=;
 b=M+TsQr/5QRHVJ7C+CcV4RTCnd9fI3rn/M4Rn+X33uDdvU/+TH4nAQ68ZUyd60AuNR6tV
 TyRBcBeU1tUfGq3gV/rlo9yiD9rrQrrkjtQmtCvjXuCZp9ZWNtJJtMvkUQxviUHkGuwn
 zGKoU03JOpi5+lzzMcNUZ8ZMb5Lr+zVscinhp3ok55ZqzNv9VZxbM0XesseTdOS9MiCI
 Em2kmnE1vWi9XcZuwdbn2WgnJq4AyDxfp4GtHRP176kWTLgmwD9Dr1pl6t+RjwshAec9
 LaGJYOONigJTR1icMYW3CXPwIdFNiwam7RgqvXwAQDbZt3ROVn/gbBJwwXqd4yK0kLmR /w== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2xksyqnn1v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 23 Jan 2020 23:39:43 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00NNdAmb148603;
 Thu, 23 Jan 2020 23:39:42 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2xqmuxhjy8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 23 Jan 2020 23:39:42 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 00NNdbmU011661;
 Thu, 23 Jan 2020 23:39:38 GMT
Received: from [10.11.111.157] (/10.11.111.157)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 23 Jan 2020 15:39:36 -0800
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH v9 4/5] locking/qspinlock: Introduce starvation avoidance
 into CNA
From: Alex Kogan <alex.kogan@oracle.com>
In-Reply-To: <5f865b62-4867-2c7b-715a-0605759e647f@redhat.com>
Date: Thu, 23 Jan 2020 18:39:36 -0500
Message-Id: <1B2B46E9-651E-4BA5-988A-924AE3E72C00@oracle.com>
References: <20200115035920.54451-1-alex.kogan@oracle.com>
 <20200115035920.54451-5-alex.kogan@oracle.com>
 <f5e31716-d687-f64c-0fc5-f1c9b539c4ff@redhat.com>
 <5f865b62-4867-2c7b-715a-0605759e647f@redhat.com>
To: Waiman Long <longman@redhat.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9509
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001230176
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9509
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001230176
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_154026_220729_F51149E5 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arch@vger.kernel.org, guohanjun@huawei.com, arnd@arndb.de,
 peterz@infradead.org, dave.dice@oracle.com, jglauber@marvell.com,
 x86@kernel.org, will.deacon@arm.com, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 steven.sistare@oracle.com, tglx@linutronix.de, daniel.m.jordan@oracle.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiBPbiBKYW4gMjMsIDIwMjAsIGF0IDM6MzkgUE0sIFdhaW1hbiBMb25nIDxsb25nbWFuQHJlZGhh
dC5jb20+IHdyb3RlOgo+IAo+IE9uIDEvMjMvMjAgMjo1NSBQTSwgV2FpbWFuIExvbmcgd3JvdGU6
Cj4+IFBsYXlpbmcgd2l0aCBsb2NrIGV2ZW50IGNvdW50cywgSSB3b3VsZCBsaWtlIHlvdSB0byBj
aGFuZ2UgdGhlIG1lYW5pbmcKPj4gaW50cmFfY291bnQgcGFyYW1ldGVyIHRoYXQgeW91IGFyZSB0
cmFja2luZy4gSW5zdGVhZCBvZiB0cmFja2luZyB0aGUKPj4gbnVtYmVyIG9mIHRpbWVzIGEgbG9j
ayBpcyBwYXNzZWQgdG8gYSB3YWl0ZXIgb2YgdGhlIHNhbWUgbm9kZQo+PiBjb25zZWN1dGl2ZWx5
LCBJIHdvdWxkIGxpa2UgeW91IHRvIHRyYWNrIHRoZSBudW1iZXIgb2YgdGltZXMgdGhlIGhlYWQK
Pj4gd2FpdGVyIGluIHRoZSBzZWNvbmRhcnkgcXVldWUgaGFzIGdpdmVuIHVwIGl0cyBjaGFuY2Ug
dG8gYWNxdWlyZSB0aGUKPj4gbG9jayBiZWNhdXNlIGEgbGF0ZXIgd2FpdGVyIGhhcyBqdW1wZWQg
dGhlIHF1ZXVlIGFuZCBhY3F1aXJlIHRoZSBsb2NrCj4+IGJlZm9yZSBpdC4KSXNu4oCZdCB0aGF0
IHRoZSBzYW1lIHRoaW5nPyBOb3RlIHRoYXQgd2Uga2VlcCB0cmFjayBvZiB0aGUgbnVtYmVyIG9m
IAppbnRyYS1ub2RlIGxvY2sgdHJhbnNmZXJzIG9ubHkgd2hlbiB0aGUgc2Vjb25kYXJ5IHF1ZXVl
IGlzIG5vdCBlbXB0eS4KCj4+IFRoaXMgdmFsdWUgZGV0ZXJtaW5lcyB0aGUgd29yc3QgY2FzZSBs
YXRlbmN5IHRoYXQgYSBzZWNvbmRhcnkKPj4gcXVldWUgd2FpdGVyIGNhbiBleHBlcmllbmNlLiBT
bwo+IAo+IFdlbGwsIHRoYXQgaXMgbm90IHN0cmljdGx5IHRydWUgYXMgYSBhIHdhaXRlciBpbiB0
aGUgbWlkZGxlIG9mIHRoZQo+IHNlY29uZGFyeSBxdWV1ZSBjYW4gZ28gYmFjayBhbmQgZnJvIGJl
dHdlZW4gdGhlIHF1ZXVlcyBmb3IgYSBudW1iZXIgb2YKPiB0aW1lcy4gT2YgY291cnNlLCBpZiB3
ZSBjYW4gZW5zdXJlIHRoYXQgd2hlbiBhIEZMVVNIX1NFQ09OREFSWV9RVUVVRSBpcwo+IGlzc3Vl
ZCwgdGhvc2Ugd2FpdGVycyB0aGF0IHdlcmUgaW4gdGhlIHNlY29uZGFyeSBxdWV1ZSB3b24ndCBi
ZSBwdXQgYmFjawo+IGludG8gdGhlIHNlY29uZGFyeSBxdWV1ZSBhZ2Fpbi4KVGhpcyB3aWxsIG5v
dCB3b3JrIGFzIGludGVuZGVkIHdoZW4gd2UgaGF2ZSBtb3JlIHRoYW4gMiBub2Rlcy4gVGhhdCBp
cywgaWYgd2UKaGF2ZSB0aHJlYWRzIGZyb20gbm9kZSBBICYgQiBpbiB0aGUgc2Vjb25kYXJ5IHF1
ZXVlLCBhbmQgdGhlbiB0aGUgcXVldWUKaXMgZmx1c2hlZCBhbmQgaXRzIGhlYWQgKHNheSwgZnJv
bSBub2RlIEEpIGdldHMgdGhlIGxvY2ssIHdlIHdhbnQgdG8gcHVzaCAKdGhyZWFkcyBmcm9tIG5v
ZGUgQiBiYWNrIGludG8gdGhlIHNlY29uZGFyeSBxdWV1ZSwgdG8ga2VlcCB0aGUgbG9jayBvbiBu
b2RlIEEuCgpBbmQgaWYgd2UgaGF2ZSBvbmx5IDIgbm9kZXMsIGEgd2FpdGVyIGluIHRoZSBtaWRk
bGUgb2YgdGhlIHNlY29uZGFyeSBxdWV1ZSB3aWxsIApuZXZlciBnbyBiYWNrIGludG8gdGhlIHNl
Y29uZGFyeSBxdWV1ZSwgZXZlbiBpZiB0aGUgdGhyZXNob2xkIGlzIHNtYWxsLiAKVGhpcyBpcyBi
ZWNhdXNlIHdlIGZsdXNoIHRoZSBzZWNvbmRhcnkgcXVldWUgYnkgcHV0dGluZyBhbGwgaXRzIHdh
aXRlcnMgaW4KdGhlIGZyb250IG9mIHRoZSBtYWluIHF1ZXVlLCBhbmQgdGhlIHNlY29uZGFyeSBx
dWV1ZSB3aWxsIHJlbWFpbiBlbXB0eSBhdCBsZWFzdAp1bnRpbCB3ZSByZWFjaCBhIHRocmVhZCBm
cm9tIGFub3RoZXIgbm9kZS4KClJlZ2FyZHMsCuKAlCBBbGV4Cl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
