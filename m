Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C244BF364E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 18:54:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rQNqcq2UoRdBNb72Imj0AGfBzkpx04LLgQCBNXHWOQ0=; b=hXM7zIqsbHSh3R
	I3v2fbtHw9sEDemcmpcDSjXgX7glfukmn4hnLw/Uh2gM2gfVVPT3rl2QarqMBanlf24FUTEpD8GlK
	FwPYgzn4uqpiIZ3ZTKWraEpl83jorwgKgVhlC+SHieknfcWdbmf2MleqRqXeBQC1sFOBm4zMpG8Lp
	U1moN6lB9A43MS6vkSExMd3FodK8JmoCvZQWhYm+BltuUsCGHaeTvhMslMsTqrNKmkGQ4b7HLQCnJ
	j7EVnpwxVS0sd30j75hodRZVrRhEl1KHcGUd+Yoq/Tit5qm68clq7gV9nZb86FE3ji6LpFM90Y6sA
	sYqkqtnIjjbaJzW0AjpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSlzE-0008Hw-Hp; Thu, 07 Nov 2019 17:54:24 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSlyp-00088Y-C4
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 17:54:05 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA7Hj18W001450;
 Thu, 7 Nov 2019 17:53:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-type :
 content-transfer-encoding; s=corp-2019-08-05;
 bh=cP3odovDn+b8l22dKmKV8q2Mp2Ep7jYU9ngn8YvoPEM=;
 b=kkeppDWvq5LseXZ7DDEvhTVO157mnZGu2hk+C2ampz6VYdXmimU/BI55qnSltRC7wvqb
 JvK2X4EoTDAz19GgqiYLpegozuIkVm0ah6krBTu2h0njH2HQ1GX2zUNHW7pzerIEL4/L
 rclTXKC5HUVechhOgMd7MbdTXECda04KULLkYhowwdzlw38jQ/U7r+lWut8Er6RDshBv
 ZgkmtJxp2yTq5G4Qb8NvQ7+eXbg37waxFHbdxPFnxgaEWAcgH76lj5gm+VWPCqZQ76mD
 XeBGa/sifmgf3XhFQL1tJIShcNhm3xaVI/5A5SIu0cDfjl41yYlQljQpsyQXBwl0X7K/ yQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2w41w0yx6t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 Nov 2019 17:53:28 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA7Hj29l038325;
 Thu, 7 Nov 2019 17:51:27 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2w41wffu1d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 Nov 2019 17:51:27 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xA7HpHGR009182;
 Thu, 7 Nov 2019 17:51:17 GMT
Received: from neelam.us.oracle.com (/10.152.128.16)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 07 Nov 2019 09:51:16 -0800
From: Alex Kogan <alex.kogan@oracle.com>
To: linux@armlinux.org.uk, peterz@infradead.org, mingo@redhat.com,
 will.deacon@arm.com, arnd@arndb.de, longman@redhat.com,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, bp@alien8.de,
 hpa@zytor.com, x86@kernel.org, guohanjun@huawei.com, jglauber@marvell.com
Subject: [PATCH v6 0/5] Add NUMA-awareness to qspinlock
Date: Thu,  7 Nov 2019 12:46:17 -0500
Message-Id: <20191107174622.61718-1-alex.kogan@oracle.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9434
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1910280000 definitions=main-1911070165
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9434
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1910280000
 definitions=main-1911070165
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_095359_521289_803AD9D8 
X-CRM114-Status: GOOD (  24.23  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: alex.kogan@oracle.com, dave.dice@oracle.com, rahul.x.yadav@oracle.com,
 steven.sistare@oracle.com, daniel.m.jordan@oracle.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TWlub3IgY2hhbmdlcyBmcm9tIHY1LCBtYWlubHkgYmFzZWQgb24gZmVlZGJhY2sgZnJvbSBMb25n
bWFuOgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tCgotIE1ha2UgdGhlIGludHJhIG5vZGUgaGFuZG9mZiB0aHJlc2hvbGQgYSBjb25m
aWd1cmFibGUgcGFyYW1ldGVyIAp2aWEgdGhlIG5ldyBrZXJuZWwgYm9vdCBjb21tYW5kLWxpbmUg
b3B0aW9uICJudW1hX3NwaW5sb2NrX3RocmVzaG9sZCIuCgotIEFkZCBkb2N1bWVudGF0aW9uIG9m
IG5ldyBjb21tYW5kLWxpbmUgb3B0aW9ucyBpbiBrZXJuZWwtcGFyYW1ldGVycy50eHQuCgotIFNt
YWxsIGZpeCBpbiBjbmFfdHJ5X2NoYW5nZV90YWlsKCkgKHVzZSBjbXB4aGdfcmVsYXhlZCgpKS4K
Ci0gU21hbGwgZml4IGluIGNuYV9pbml0X25vZGVzKCkgKHJldHVybiAwKS4KCi0gTWlub3IgY2hh
bmdlcyBpbiBjbmFfcGFzc19sb2NrKCkuIAoKClN1bW1hcnkKLS0tLS0tLQoKTG9jayB0aHJvdWdo
cHV0IGNhbiBiZSBpbmNyZWFzZWQgYnkgaGFuZGluZyBhIGxvY2sgdG8gYSB3YWl0ZXIgb24gdGhl
CnNhbWUgTlVNQSBub2RlIGFzIHRoZSBsb2NrIGhvbGRlciwgcHJvdmlkZWQgY2FyZSBpcyB0YWtl
biB0byBhdm9pZApzdGFydmF0aW9uIG9mIHdhaXRlcnMgb24gb3RoZXIgTlVNQSBub2Rlcy4gVGhp
cyBwYXRjaCBpbnRyb2R1Y2VzIENOQQooY29tcGFjdCBOVU1BLWF3YXJlIGxvY2spIGFzIHRoZSBz
bG93IHBhdGggZm9yIHFzcGlubG9jay4gSXQgaXMKZW5hYmxlZCB0aHJvdWdoIGEgY29uZmlndXJh
dGlvbiBvcHRpb24gKE5VTUFfQVdBUkVfU1BJTkxPQ0tTKS4KCkNOQSBpcyBhIE5VTUEtYXdhcmUg
dmVyc2lvbiBvZiB0aGUgTUNTIGxvY2suIFNwaW5uaW5nIHRocmVhZHMgYXJlCm9yZ2FuaXplZCBp
biB0d28gcXVldWVzLCBhIG1haW4gcXVldWUgZm9yIHRocmVhZHMgcnVubmluZyBvbiB0aGUgc2Ft
ZQpub2RlIGFzIHRoZSBjdXJyZW50IGxvY2sgaG9sZGVyLCBhbmQgYSBzZWNvbmRhcnkgcXVldWUg
Zm9yIHRocmVhZHMKcnVubmluZyBvbiBvdGhlciBub2Rlcy4gVGhyZWFkcyBzdG9yZSB0aGUgSUQg
b2YgdGhlIG5vZGUgb24gd2hpY2gKdGhleSBhcmUgcnVubmluZyBpbiB0aGVpciBxdWV1ZSBub2Rl
cy4gQWZ0ZXIgYWNxdWlyaW5nIHRoZSBNQ1MgbG9jayBhbmQKYmVmb3JlIGFjcXVpcmluZyB0aGUg
c3BpbmxvY2ssIHRoZSBsb2NrIGhvbGRlciBzY2FucyB0aGUgbWFpbiBxdWV1ZQpsb29raW5nIGZv
ciBhIHRocmVhZCBydW5uaW5nIG9uIHRoZSBzYW1lIG5vZGUgKHByZS1zY2FuKS4gSWYgZm91bmQg
KGNhbGwKaXQgdGhyZWFkIFQpLCBhbGwgdGhyZWFkcyBpbiB0aGUgbWFpbiBxdWV1ZSBiZXR3ZWVu
IHRoZSBjdXJyZW50IGxvY2sKaG9sZGVyIGFuZCBUIGFyZSBtb3ZlZCB0byB0aGUgZW5kIG9mIHRo
ZSBzZWNvbmRhcnkgcXVldWUuICBJZiBzdWNoIFQKaXMgbm90IGZvdW5kLCB3ZSBtYWtlIGFub3Ro
ZXIgc2NhbiBvZiB0aGUgbWFpbiBxdWV1ZSBhZnRlciBhY3F1aXJpbmcgCnRoZSBzcGlubG9jayB3
aGVuIHVubG9ja2luZyB0aGUgTUNTIGxvY2sgKHBvc3Qtc2NhbiksIHN0YXJ0aW5nIGF0IHRoZQpu
b2RlIHdoZXJlIHByZS1zY2FuIHN0b3BwZWQuIElmIGJvdGggc2NhbnMgZmFpbCB0byBmaW5kIHN1
Y2ggVCwgdGhlCk1DUyBsb2NrIGlzIHBhc3NlZCB0byB0aGUgZmlyc3QgdGhyZWFkIGluIHRoZSBz
ZWNvbmRhcnkgcXVldWUuIElmIHRoZQpzZWNvbmRhcnkgcXVldWUgaXMgZW1wdHksIHRoZSBNQ1Mg
bG9jayBpcyBwYXNzZWQgdG8gdGhlIG5leHQgdGhyZWFkIGluIHRoZQptYWluIHF1ZXVlLiBUbyBh
dm9pZCBzdGFydmF0aW9uIG9mIHRocmVhZHMgaW4gdGhlIHNlY29uZGFyeSBxdWV1ZSwgdGhvc2UK
dGhyZWFkcyBhcmUgbW92ZWQgYmFjayB0byB0aGUgaGVhZCBvZiB0aGUgbWFpbiBxdWV1ZSBhZnRl
ciBhIGNlcnRhaW4KbnVtYmVyIG9mIGludHJhLW5vZGUgbG9jayBoYW5kLW9mZnMuCgpNb3JlIGRl
dGFpbHMgYXJlIGF2YWlsYWJsZSBhdCBodHRwczovL2FyeGl2Lm9yZy9hYnMvMTgxMC4wNTYwMC4K
CldlIGhhdmUgZG9uZSBzb21lIHBlcmZvcm1hbmNlIGV2YWx1YXRpb24gd2l0aCB0aGUgbG9ja3Rv
cnR1cmUgbW9kdWxlCmFzIHdlbGwgYXMgd2l0aCBzZXZlcmFsIGJlbmNobWFya3MgZnJvbSB0aGUg
d2lsbC1pdC1zY2FsZSByZXBvLgpUaGUgZm9sbG93aW5nIGxvY2t0b3J0dXJlIHJlc3VsdHMgYXJl
IGZyb20gYW4gT3JhY2xlIFg1LTQgc2VydmVyCihmb3VyIEludGVsIFhlb24gRTctODg5NSB2MyBA
IDIuNjBHSHogc29ja2V0cyB3aXRoIDE4IGh5cGVydGhyZWFkZWQKY29yZXMgZWFjaCkuIEVhY2gg
bnVtYmVyIHJlcHJlc2VudHMgYW4gYXZlcmFnZSAob3ZlciAyNSBydW5zKSBvZiB0aGUKdG90YWwg
bnVtYmVyIG9mIG9wcyAoeDEwXjcpIHJlcG9ydGVkIGF0IHRoZSBlbmQgb2YgZWFjaCBydW4uIFRo
ZSAKc3RhbmRhcmQgZGV2aWF0aW9uIGlzIGFsc28gcmVwb3J0ZWQgaW4gKCksIGFuZCBpbiBnZW5l
cmFsIGlzIGFib3V0IDMlCmZyb20gdGhlIGF2ZXJhZ2UuIFRoZSAnc3RvY2snIGtlcm5lbCBpcyB2
NS40LjAtcmM1LApjb21taXQgN2M1ZTEzNmEwMmJhLCBjb21waWxlZCBpbiB0aGUgZGVmYXVsdCBj
b25maWd1cmF0aW9uLiAKJ3BhdGNoLUNOQScgaXMgdGhlIG1vZGlmaWVkIGtlcm5lbCB3aXRoIE5V
TUFfQVdBUkVfU1BJTkxPQ0tTIHNldDsgCnRoZSBzcGVlZHVwIGlzIGNhbGN1bGF0ZWQgZGl2aWRp
bmcgJ3BhdGNoLUNOQScgYnkgJ3N0b2NrJy4KCiN0aHIgIAkgc3RvY2sgICAgICAgIHBhdGNoLUNO
QSAgIHNwZWVkdXAgKHBhdGNoLUNOQS9zdG9jaykKICAxICAyLjcyNiAoMC4xMDcpICAyLjcyOSAo
MC4wOTYpICAxLjAwMQogIDIgIDIuNjU2ICgwLjExMykgIDIuNjY2ICgwLjExNikgIDEuMDA0CiAg
NCAgNC4xNDcgKDAuMDg1KSAgNC4yNTUgKDAuMTM1KSAgMS4wMjYKICA4ICA1LjM4OCAoMC4xNDYp
ICA2LjY0MiAoMC4xNTUpICAxLjIzMwogMTYgIDYuNjg4ICgwLjE1MikgIDguMDM1ICgwLjE2Mikg
IDEuMjAyCiAzMiAgNy4zODkgKDAuMjAzKSAgOC43NTEgKDAuMTkyKSAgMS4xODQKIDM2ICA3LjQy
MCAoMC4xNzkpICA4LjgxOCAoMC4xNzMpICAxLjE4OAogNzIgIDYuNDg5ICgwLjEyMikgIDkuNDAz
ICgwLjI1MikgIDEuNDQ5CjEwOCAgNi4xNjMgKDAuMDc4KSAgOS41MDQgKDAuMTc3KSAgMS41NDIK
MTQyICA1LjczNiAoMC4xMDUpICA5LjM3MSAoMC4xODEpICAxLjYzNAoKVGhlIGZvbGxvd2luZyB0
YWJsZXMgY29udGFpbiB0aHJvdWdocHV0IHJlc3VsdHMgKG9wcy91cykgZnJvbSB0aGUgc2FtZQpz
ZXR1cCBmb3Igd2lsbC1pdC1zY2FsZS9vcGVuMV90aHJlYWRzOiAKCiN0aHIgIAkgc3RvY2sgICAg
ICAgIHBhdGNoLUNOQSAgIHNwZWVkdXAgKHBhdGNoLUNOQS9zdG9jaykKICAxICAwLjUzMyAoMC4w
MDEpICAwLjUzNCAoMC4wMDIpICAxLjAwMwogIDIgIDAuNzg3ICgwLjAyMCkgIDAuODAxICgwLjAy
MikgIDEuMDE3CiAgNCAgMS40MTggKDAuMDMxKSAgMS40MjEgKDAuMDIyKSAgMS4wMDIKICA4ICAx
Ljc0NSAoMC4xMTIpICAxLjczNiAoMC4xMDQpICAwLjk5NQogMTYgIDEuNzc5ICgwLjEwNCkgIDEu
Njk2ICgwLjA5MCkgIDAuOTUzCiAzMiAgMC45MjMgKDAuMDYwKSAgMS42MzQgKDAuMTA5KSAgMS43
NzEKIDM2ICAwLjg5OSAoMC4wODcpICAxLjYzNiAoMC4xMDgpICAxLjgyMQogNzIgIDAuODM3ICgw
LjAzOCkgIDEuNjE1ICgwLjA4NikgIDEuOTI4CjEwOCAgMC44NDEgKDAuMDQ0KSAgMS43MTUgKDAu
MDg3KSAgMi4wNDEKMTQyICAwLjgwMiAoMC4wNDApICAxLjczNCAoMC4wODUpICAyLjE2MwoKYW5k
IHdpbGwtaXQtc2NhbGUvbG9jazJfdGhyZWFkczoKCiN0aHIgIAkgc3RvY2sgICAgICAgIHBhdGNo
LUNOQSAgIHNwZWVkdXAgKHBhdGNoLUNOQS9zdG9jaykKICAxICAxLjU5MCAoMC4wMTMpICAxLjU4
MyAoMC4wMTApICAwLjk5NQogIDIgIDIuNzE0ICgwLjA1NCkgIDIuNjk3ICgwLjA1MSkgIDAuOTk0
CiAgNCAgNS4yNTEgKDAuMzExKSAgNS4yNTIgKDAuMjE3KSAgMS4wMDAKICA4ICA0LjM1OCAoMC4z
MDEpICA0LjMwOSAoMC4zMDUpICAwLjk4OQogMTYgIDQuMjE5ICgwLjE0MCkgIDQuMTYxICgwLjEx
NCkgIDAuOTg2CiAzMiAgMi41NDcgKDAuMTE3KSAgNC4xMzQgKDAuMDg0KSAgMS42MjMKIDM2ICAy
LjU2MCAoMC4wNzEpICA0LjEyNyAoMC4xMjIpICAxLjYxMgogNzIgIDEuOTgyICgwLjA4NikgIDQu
MDk3ICgwLjEwNikgIDIuMDY3CjEwOCAgMi4xMTQgKDAuMDg5KSAgNC4wODIgKDAuMTA1KSAgMS45
MzAKMTQyICAxLjkyMyAoMC4xMDApICA0LjAyNCAoMC4wODYpICAyLjA5MwoKT3VyIGV2YWx1YXRp
b24gc2hvd3MgdGhhdCBDTkEgYWxzbyBpbXByb3ZlcyBwZXJmb3JtYW5jZSBvZiB1c2VyIAphcHBs
aWNhdGlvbnMgdGhhdCBoYXZlIGhvdCBwdGhyZWFkIG11dGV4ZXMuIFRob3NlIG11dGV4ZXMgYXJl
IApibG9ja2luZywgYW5kIHdhaXRpbmcgdGhyZWFkcyBwYXJrIGFuZCB1bnBhcmsgdmlhIHRoZSBm
dXRleCAKbWVjaGFuaXNtIGluIHRoZSBrZXJuZWwuIEdpdmVuIHRoYXQga2VybmVsIGZ1dGV4IGNo
YWlucywgd2hpY2gKYXJlIGhhc2hlZCBieSB0aGUgbXV0ZXggYWRkcmVzcywgYXJlIGVhY2ggcHJv
dGVjdGVkIGJ5IGEgCmNoYWluLXNwZWNpZmljIHNwaW4gbG9jaywgdGhlIGNvbnRlbnRpb24gb24g
YSB1c2VyLW1vZGUgbXV0ZXggCnRyYW5zbGF0ZXMgaW50byBjb250ZW50aW9uIG9uIGEga2VybmVs
IGxldmVsIHNwaW5sb2NrLiAKCkhlcmUgYXJlIHRoZSByZXN1bHRzIGZvciB0aGUgbGV2ZWxkYiDi
gJhyZWFkcmFuZG9t4oCZIGJlbmNobWFyazoKCiN0aHIgIAkgc3RvY2sgICAgICAgIHBhdGNoLUNO
QSAgIHNwZWVkdXAgKHBhdGNoLUNOQS9zdG9jaykKICAxICAwLjUzMyAoMC4wMTQpICAwLjUzMyAo
MC4wMTYpICAxLjAwMQogIDIgIDAuNjY3ICgwLjAyOSkgIDAuNjY5ICgwLjAyNykgIDEuMDAzCiAg
NCAgMC42OTkgKDAuMDE4KSAgMC43MTQgKDAuMDI2KSAgMS4wMjEKICA4ICAwLjY5MiAoMC4wMjAp
ICAwLjY5NiAoMC4wMjYpICAxLjAwNQogMTYgIDAuNzMwICgwLjAyOSkgIDAuNzMzICgwLjAyNykg
IDEuMDA0CiAzMiAgMC43MjYgKDAuMDM0KSAgMC45NzggKDAuMTE4KSAgMS4zNDgKIDM2ICAwLjc0
MCAoMC4wNDIpICAxLjA5OSAoMC4xMTEpICAxLjQ4NQogNzIgIDAuNjcxICgwLjAzMykgIDEuMTY3
ICgwLjAyMSkgIDEuNzM5CjEwOCAgMC42MzMgKDAuMDE3KSAgMS4xNjEgKDAuMDI4KSAgMS44MzQK
MTQyICAwLjYwNiAoMC4wMTYpICAxLjE0NCAoMC4wMTgpICAxLjg4NwoKQWRkaXRpb25hbCBwZXJm
b3JtYW5jZSBudW1iZXJzIGFyZSBhdmFpbGFibGUgaW4gcHJldmlvdXMgcmV2aXNpb25zCm9mIHRo
ZSBzZXJpZXMuCgpGdXJ0aGVyIGNvbW1lbnRzIGFyZSB3ZWxjb21lIGFuZCBhcHByZWNpYXRlZC4K
CkFsZXggS29nYW4gKDUpOgogIGxvY2tpbmcvcXNwaW5sb2NrOiBSZW5hbWUgbWNzIGxvY2svdW5s
b2NrIG1hY3JvcyBhbmQgbWFrZSB0aGVtIG1vcmUKICAgIGdlbmVyaWMKICBsb2NraW5nL3FzcGlu
bG9jazogUmVmYWN0b3IgdGhlIHFzcGlubG9jayBzbG93IHBhdGgKICBsb2NraW5nL3FzcGlubG9j
azogSW50cm9kdWNlIENOQSBpbnRvIHRoZSBzbG93IHBhdGggb2YgcXNwaW5sb2NrCiAgbG9ja2lu
Zy9xc3BpbmxvY2s6IEludHJvZHVjZSBzdGFydmF0aW9uIGF2b2lkYW5jZSBpbnRvIENOQQogIGxv
Y2tpbmcvcXNwaW5sb2NrOiBJbnRyb2R1Y2UgdGhlIHNodWZmbGUgcmVkdWN0aW9uIG9wdGltaXph
dGlvbiBpbnRvCiAgICBDTkEKCiBEb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL2tlcm5lbC1wYXJh
bWV0ZXJzLnR4dCB8ICAxOCArKwogYXJjaC9hcm0vaW5jbHVkZS9hc20vbWNzX3NwaW5sb2NrLmgg
ICAgICAgICAgICAgfCAgIDYgKy0KIGFyY2gveDg2L0tjb25maWcgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwgIDE5ICsrCiBhcmNoL3g4Ni9pbmNsdWRlL2FzbS9xc3BpbmxvY2suaCAg
ICAgICAgICAgICAgICB8ICAgNCArCiBhcmNoL3g4Ni9rZXJuZWwvYWx0ZXJuYXRpdmUuYyAgICAg
ICAgICAgICAgICAgICB8ICA3MCArKysrKysKIGluY2x1ZGUvYXNtLWdlbmVyaWMvbWNzX3NwaW5s
b2NrLmggICAgICAgICAgICAgIHwgICA0ICstCiBrZXJuZWwvbG9ja2luZy9tY3Nfc3BpbmxvY2su
aCAgICAgICAgICAgICAgICAgICB8ICAyMCArLQoga2VybmVsL2xvY2tpbmcvcXNwaW5sb2NrLmMg
ICAgICAgICAgICAgICAgICAgICAgfCAgNzcgKysrKystCiBrZXJuZWwvbG9ja2luZy9xc3Bpbmxv
Y2tfY25hLmggICAgICAgICAgICAgICAgICB8IDMxNSArKysrKysrKysrKysrKysrKysrKysrKysK
IGtlcm5lbC9sb2NraW5nL3FzcGlubG9ja19wYXJhdmlydC5oICAgICAgICAgICAgIHwgICAyICst
CiAxMCBmaWxlcyBjaGFuZ2VkLCA1MTIgaW5zZXJ0aW9ucygrKSwgMjMgZGVsZXRpb25zKC0pCiBj
cmVhdGUgbW9kZSAxMDA2NDQga2VybmVsL2xvY2tpbmcvcXNwaW5sb2NrX2NuYS5oCgotLSAKMi4x
MS4wIChBcHBsZSBHaXQtODEpCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
