Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29DF7149EF5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 07:17:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UEpVimSOrXuY4zN7ry/noCWKlZCWlyZ1OfZWsEySjYI=; b=T7J3XJJXHe4XVN
	55X69tvSX4DwAywzWMDxmgZVk46CYtUlEO1iJ74e61HB0bVtK6kcL+nLLLUHtcj66/QLKmuWanWCT
	RsePw8gePxqp6OBAdZuAC0kA7+2vkzp+90rp/vITb5eolwl9m/mj0S3goYt4xVvS4VS+EN4BuqxY8
	1cXgjkMBkbKjNVGzEHgbyy2FOVkwUYBuGENkax/gl/kfkuldbaTkWoq7cHsei8R+/umjHGl21luPL
	W0GPoTOiZXg2kjAwI9olS5j0IvJ1MZMg57GWI0dDgxf+nQACBgEYZrULULwwB6sRbKnLa5tUR2vq+
	wz8VmIFet86wfak1si4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivxhy-0005tx-R8; Mon, 27 Jan 2020 06:17:14 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivxhp-0005tS-Hb
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 06:17:07 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00R6DIcW119854;
 Mon, 27 Jan 2020 06:16:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2019-08-05; bh=gJ/jpXTHwRBSq22rXvdlhHavOGJ9Q+e1no1Mq6F4Bvw=;
 b=Y/YSmaBFS9lARC5G6233J/9lchWbfrA75ugGtpPugGClHYpgmtGMotz2gMoQF8X/ATIJ
 ygHRsmQtsrk6wFVvWBC0NS2fLFkbJv8RkTGJBmuHc3+C4TDgVf+CJAwmIsG7qKEm7osv
 3/R+M0BOGKKElRC4TBXo9DP5tu0yp92Kf9zNe3FPZbTkekOzi8hDht1OnMngD0E09fhL
 aRdznbzsQkbytkP5N8hEx/Wac5dc82MyS4xVbntjXZrKdO3L1qOmdOh6Jaqq/SvF98i+
 an5wMSQtn2I3E1NGzNmEh9Dk0g8euyQ3jy12mvLH1cY1JMn1piQQ8PMWX9XKLEabYKfB MQ== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2xrdmq5adk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 27 Jan 2020 06:16:37 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00R6ECZ9111490;
 Mon, 27 Jan 2020 06:16:36 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2xry6qr03t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 27 Jan 2020 06:16:36 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 00R6GYZC001241;
 Mon, 27 Jan 2020 06:16:34 GMT
Received: from [10.39.241.133] (/10.39.241.133)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sun, 26 Jan 2020 22:16:34 -0800
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH v9 0/5] Add NUMA-awareness to qspinlock
From: Alex Kogan <alex.kogan@oracle.com>
In-Reply-To: <CAC4j=Y_SMHe4WNpaaS0kK1JYfnufM+AAiwwUMBx27L8U6bD8Yg@mail.gmail.com>
Date: Mon, 27 Jan 2020 01:16:36 -0500
Message-Id: <3CBCD208-0859-458E-8A89-96E8E9A98664@oracle.com>
References: <20200115035920.54451-1-alex.kogan@oracle.com>
 <CAC4j=Y8rCeTX9oKKbh+dCdTP8Ud4hW1ybu+iE7t_nxMSYBOR5w@mail.gmail.com>
 <4F71A184-42C0-4865-9AAA-79A636743C25@oracle.com>
 <CAC4j=Y_SMHe4WNpaaS0kK1JYfnufM+AAiwwUMBx27L8U6bD8Yg@mail.gmail.com>
To: Lihao Liang <lihaoliang@google.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9512
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001270054
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9512
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001270054
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_221705_665891_182085D3 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Peter Zijlstra <peterz@infradead.org>, dave.dice@oracle.com,
 jglauber@marvell.com, x86@kernel.org, will.deacon@arm.com,
 linux@armlinux.org.uk, steven.sistare@oracle.com, linux-kernel@vger.kernel.org,
 mingo@redhat.com, bp@alien8.de, hpa@zytor.com, longman@redhat.com,
 tglx@linutronix.de, daniel.m.jordan@oracle.com, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cj4+PiBUaGlzIGlzIHBhcnRpY3VsYXJseSByZWxldmFudAo+Pj4gaW4gaGlnaCBjb250ZW50aW9u
IHNpdHVhdGlvbnMgd2hlbiBuZXcgdGhyZWFkcyBrZWVwIGFycml2aW5nIG9uIHRoZSBzYW1lCj4+
PiBzb2NrZXQgYXMgdGhlIGxvY2sgaG9sZGVyLgo+PiBJbiB0aGlzIGNhc2UsIHRoZSBsb2NrIHdp
bGwgc3RheSBvbiB0aGUgc2FtZSBOVU1BIG5vZGUvc29ja2V0IGZvcgo+PiAyXm51bWFfc3Bpbmxv
Y2tfdGhyZXNob2xkIHRpbWVzLCB3aGljaCBpcyB0aGUgd29yc3QgY2FzZSBzY2VuYXJpbyBpZiB3
ZQo+PiBjb25zaWRlciB0aGUgbG9uZy10ZXJtIGZhaXJuZXNzLiBBbmQgaWYgd2UgaGF2ZSBtdWx0
aXBsZSBub2RlcywgaXQgd2lsbCB0YWtlCj4+IHVwIHRvIDJebnVtYV9zcGlubG9ja190aHJlc2hv
bGQgWCAobnJfbm9kZXMgLSAxKSArIG5yX2NwdXNfcGVyX25vZGUKPj4gbG9jayB0cmFuc2l0aW9u
cyB1bnRpbCBhbnkgZ2l2ZW4gdGhyZWFkIHdpbGwgYWNxdWlyZSB0aGUgbG9jawo+PiAoYXNzdW1p
bmcgMl5udW1hX3NwaW5sb2NrX3RocmVzaG9sZCA+IG5yX2NwdXNfcGVyX25vZGUpLgo+PiAKPiAK
PiBZb3UncmUgcmlnaHQgdGhhdCB0aGUgbGF0ZXN0IHZlcnNpb24gb2YgdGhlIHBhdGNoIGhhbmRs
ZXMgbG9uZy10ZXJtIGZhaXJuZXNzCj4gZGV0ZXJtaW5pc3RpY2FsbHkuCj4gCj4gQXMgSSB1bmRl
cnN0YW5kIGl0LCB0aGUgbi10aCB0aHJlYWQgaW4gdGhlIG1haW4gcXVldWUgaXMgZ3VhcmFudGVl
ZCB0bwo+IGFjcXVpcmUgdGhlIGxvY2sgYWZ0ZXIgTiBsb2NrIGhhbmRvdmVycywgd2hlcmUgTiBp
cyBib3VuZGVkIGJ5Cj4gCj4gbiAtIDEgKyAyXm51bWFfc3BpbmxvY2tfdGhyZXNob2xkICogKG5y
X25vZGVzIC0gMSkKPiAKPiBJJ20gbm90IHN1cmUgd2hhdCByb2xlIHRoZSB2YXJpYWJsZSBucl9j
cHVzX3Blcl9ub2RlIHBsYXlzIGluIHlvdXIgYW5hbHlzaXMuCgpZZWFoLCB0aGF04oCZcyBhIG1p
bm9yIHBvaW50LCBidXQgbGV0IG1lIHRyeSB0byBjbGFyaWZ5LgoKVGhlICJuLXRoIHRocmVhZCBp
biB0aGUgbWFpbiBxdWV1ZeKAnSBpcyAoYXQgbW9zdCkgdGhlIG5yX2NwdXNfcGVyX25vZGUtdGgg
dGhyZWFkIApmb3Igc29tZSBub2RlIGsuIFNvIHdoZW4gdGhlIG5vZGUgayBnZXRzIHRoZSBwcmVm
ZXJlbmNlLCB0aGF0IHRocmVhZCB3aWxsCmdldCB0aGUgbG9jayBhZnRlciBhdCBtb3N0IG5yX2Nw
dXNfcGVyX25vZGUtMSBsb2NrIHRyYW5zaXRpb25zLiBBcyB3ZSBjb25zaWRlcgp0aGUgdXBwZXIg
Ym91bmQsIHlvdXIgYW5hbHlzaXMgaXMgYWxzbyBjb3JyZWN0OyBtaW5lIGlzIGp1c3QgYSBiaXQg
dGlnaHRlci4KCk1ha2VzIHNlbnNlPwoKUmVnYXJkcywK4oCUIEFsZXgKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
