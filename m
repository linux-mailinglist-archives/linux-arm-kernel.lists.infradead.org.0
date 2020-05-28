Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 537461E6EA3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 00:23:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Dc8PuXBz5oCFVFKo3GP8NjiT2fDxztS4kmQe/g8I+zU=; b=TY/Nzp3aOnv4sI1epHJO1wgQm
	g9xZuGqnYaQniV+N3DnXoQahLCEE3EmIKvu6PnC82fnUIcDhe1KeMVkxNFmKjZEs4RLjtMlFIxH/h
	N1StES9MuU94DT7wktYr709d95WiZmkvoq1ppbYhckUoXeEfvOdOuCPpV+G7XYXByrYt92YlvsXoG
	LeZWdwqCNIKQc/cxN38e0S7qDyXy4PRvKKtUr02lMztF4sLmNSGTHLyEpZhnvUz7Lebn3OOw0pnRU
	ojGYY/Vun+PXGLV5fmc7IP9jFLaj5TwMEjni7tgyW2M6VPqc4rFdI1zWPVgegde1UNG5EfpHlo73A
	0w7bGw4Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeQwB-0005jZ-Qw; Thu, 28 May 2020 22:23:43 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeQvh-0005gL-Fg; Thu, 28 May 2020 22:23:15 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04SMMCO8077828;
 Thu, 28 May 2020 22:22:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=pgGnLsM1bSn7Hitbxv/OnsybTse9rQRdmkPsorQ6A70=;
 b=HZLKPY0RlGYg8QG5DpTqwSBVmljIjt4jzyRpaOst39SbYms+6S9VtDBIaX0P1HDNk8rD
 +AYsE1YiSh4T3tZoB9JqlGbu0WIeeGbU0sl+InLeDMZV/bv5gK7NLfcFZpvaEB5syy3h
 I4IxgkqNx13bynn9sos6GcR82P7pdKMbEAS/8VFaUNMV/dB5DHnC14bspIoWiDzrqmsU
 7FMCxx2brbqH8lFoNkM1+ilWS7sy41RSI5hH/mh8f7eyFLMA0DURe8jE3gl+8a+hNXM6
 tPAOtjiY598J7XNKWpMdmj0pRPPkV9YtSB8KanlB0v0gFlRYtCPax+KenAhV84UE552W IA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 318xe1qhca-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 28 May 2020 22:22:47 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04SMDflD066940;
 Thu, 28 May 2020 22:20:46 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 31a9kt94ry-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 28 May 2020 22:20:46 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04SMKa36012836;
 Thu, 28 May 2020 22:20:36 GMT
Received: from [192.168.1.106] (/47.220.71.223)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 28 May 2020 15:20:36 -0700
Subject: Re: [PATCH v8 0/5] support reserving crashkernel above 4G on arm64
 kdump
To: Baoquan He <bhe@redhat.com>, Chen Zhou <chenzhou10@huawei.com>
References: <20200521093805.64398-1-chenzhou10@huawei.com>
 <20200526014242.GF20045@MiWiFi-R3L-srv>
From: John Donnelly <John.P.donnelly@oracle.com>
Message-ID: <897ea1b9-a68c-8544-6532-a21be135ce01@oracle.com>
Date: Thu, 28 May 2020 17:20:34 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200526014242.GF20045@MiWiFi-R3L-srv>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9635
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 mlxscore=0 adultscore=0
 mlxlogscore=999 malwarescore=0 spamscore=0 bulkscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005280142
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9635
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxlogscore=999
 adultscore=0 cotscore=-2147483648 mlxscore=0 bulkscore=0
 priorityscore=1501 phishscore=0 lowpriorityscore=0 malwarescore=0
 clxscore=1011 impostorscore=0 suspectscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005280143
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_152313_613722_EF93ADE7 
X-CRM114-Status: GOOD (  25.62  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: horms@verge.net.au, devicetree@vger.kernel.org, arnd@arndb.de,
 will@kernel.org, linux-doc@vger.kernel.org, catalin.marinas@arm.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 mingo@redhat.com, guohanjun@huawei.com, tglx@linutronix.de,
 pkushwaha@marvell.com, dyoung@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDUvMjUvMjAgODo0MiBQTSwgQmFvcXVhbiBIZSB3cm90ZToKPiBPbiAwNS8yMS8yMCBhdCAw
NTozOHBtLCBDaGVuIFpob3Ugd3JvdGU6Cj4+IFRoaXMgcGF0Y2ggc2VyaWVzIGVuYWJsZSByZXNl
cnZpbmcgY3Jhc2hrZXJuZWwgYWJvdmUgNEcgaW4gYXJtNjQuCj4+Cj4+IFRoZXJlIGFyZSBmb2xs
b3dpbmcgaXNzdWVzIGluIGFybTY0IGtkdW1wOgo+PiAxLiBXZSB1c2UgY3Jhc2hrZXJuZWw9WCB0
byByZXNlcnZlIGNyYXNoa2VybmVsIGJlbG93IDRHLCB3aGljaCB3aWxsIGZhaWwKPj4gd2hlbiB0
aGVyZSBpcyBubyBlbm91Z2ggbG93IG1lbW9yeS4KPj4gMi4gQ3VycmVudGx5LCBjcmFzaGtlcm5l
bD1ZQFggY2FuIGJlIHVzZWQgdG8gcmVzZXJ2ZSBjcmFzaGtlcm5lbCBhYm92ZSA0RywKPj4gaW4g
dGhpcyBjYXNlLCBpZiBzd2lvdGxiIG9yIERNQSBidWZmZXJzIGFyZSByZXF1aXJlZCwgY3Jhc2gg
ZHVtcCBrZXJuZWwKPj4gd2lsbCBib290IGZhaWx1cmUgYmVjYXVzZSB0aGVyZSBpcyBubyBsb3cg
bWVtb3J5IGF2YWlsYWJsZSBmb3IgYWxsb2NhdGlvbi4KPj4KPj4gVG8gc29sdmUgdGhlc2UgaXNz
dWVzLCBpbnRyb2R1Y2UgY3Jhc2hrZXJuZWw9WCxsb3cgdG8gcmVzZXJ2ZSBzcGVjaWZpZWQKPj4g
c2l6ZSBsb3cgbWVtb3J5Lgo+PiBDcmFzaGtlcm5lbD1YIHRyaWVzIHRvIHJlc2VydmUgbWVtb3J5
IGZvciB0aGUgY3Jhc2ggZHVtcCBrZXJuZWwgdW5kZXIKPj4gNEcuIElmIGNyYXNoa2VybmVsPVks
bG93IGlzIHNwZWNpZmllZCBzaW11bHRhbmVvdXNseSwgcmVzZXJ2ZSBzcGNpZmllZAo+PiBzaXpl
IGxvdyBtZW1vcnkgZm9yIGNyYXNoIGtkdW1wIGtlcm5lbCBkZXZpY2VzIGZpcnN0bHkgYW5kIHRo
ZW4gcmVzZXJ2ZQo+PiBtZW1vcnkgYWJvdmUgNEcuCj4+Cj4+IFdoZW4gY3Jhc2hrZXJuZWwgaXMg
cmVzZXJ2ZWQgYWJvdmUgNEcgaW4gbWVtb3J5LCB0aGF0IGlzLCBjcmFzaGtlcm5lbD1YLGxvdwo+
PiBpcyBzcGVjaWZpZWQgc2ltdWx0YW5lb3VzbHksIGtlcm5lbCBzaG91bGQgcmVzZXJ2ZSBzcGVj
aWZpZWQgc2l6ZSBsb3cgbWVtb3J5Cj4+IGZvciBjcmFzaCBkdW1wIGtlcm5lbCBkZXZpY2VzLiBT
byB0aGVyZSBtYXkgYmUgdHdvIGNyYXNoIGtlcm5lbCByZWdpb25zLCBvbmUKPj4gaXMgYmVsb3cg
NEcsIHRoZSBvdGhlciBpcyBhYm92ZSA0Ry4KPj4gSW4gb3JkZXIgdG8gZGlzdGluY3QgZnJvbSB0
aGUgaGlnaCByZWdpb24gYW5kIG1ha2Ugbm8gZWZmZWN0IHRvIHRoZSB1c2Ugb2YKPj4ga2V4ZWMt
dG9vbHMsIHJlbmFtZSB0aGUgbG93IHJlZ2lvbiBhcyAiQ3Jhc2gga2VybmVsIChsb3cpIiwgYW5k
IGFkZCBEVCBwcm9wZXJ0eQo+PiAibGludXgsbG93LW1lbW9yeS1yYW5nZSIgdG8gY3Jhc2ggZHVt
cCBrZXJuZWwncyBkdGIgdG8gcGFzcyB0aGUgbG93IHJlZ2lvbi4KPj4KPj4gQmVzaWRlcywgd2Ug
bmVlZCB0byBtb2RpZnkga2V4ZWMtdG9vbHM6Cj4+IGFybTY0OiBrZHVtcDogYWRkIGFub3RoZXIg
RFQgcHJvcGVydHkgdG8gY3Jhc2ggZHVtcCBrZXJuZWwncyBkdGIoc2VlIFsxXSkKPj4KPj4gVGhl
IHByZXZpb3VzIGNoYW5nZXMgYW5kIGRpc2N1c3Npb25zIGNhbiBiZSByZXRyaWV2ZWQgZnJvbToK
Pj4KPj4gQ2hhbmdlcyBzaW5jZSBbdjddCj4+IC0gTW92ZSB4ODYgQ1JBU0hfQUxJR04gdG8gMk0K
Pj4gU3VnZ2VzdGVkIGJ5IERhdmUgYW5kIGRvIHNvbWUgdGVzdCwgbW92ZSB4ODYgQ1JBU0hfQUxJ
R04gdG8gMk0uCj4gT0ssIG1vdmluZyB4ODYgQ1JBU0hfQUxJR04gdG8gMk0gaXMgc3VnZ2VzdGVk
IGJ5IERhdmUuIEJlY2F1c2UKPiBDT05GSUdfUEhZU0lDQUxfQUxJR04gY2FuIGJlIHNlbGVjdGVk
IGZyb20gMk0gdG8gMTZNLiBTbyAyTSBzZWVtcyBnb29kLgo+IEJ1dCwgYW55d2F5LCB3ZSBzaG91
bGQgdGVsbCB0aGUgcmVhc29uIHdoeSBpdCBuZWVkIGJlIGNoYW5nZWQgaW4gY29tbWl0Cj4gbG9n
Lgo+Cj4KPiBhcmNoL3g4Ni9LY29uZmlnOgo+IGNvbmZpZyBQSFlTSUNBTF9BTElHTgo+ICAgICAg
ICAgIGhleCAiQWxpZ25tZW50IHZhbHVlIHRvIHdoaWNoIGtlcm5lbCBzaG91bGQgYmUgYWxpZ25l
ZCIKPiAgICAgICAgICBkZWZhdWx0ICIweDIwMDAwMCIKPiAgICAgICAgICByYW5nZSAweDIwMDAg
MHgxMDAwMDAwIGlmIFg4Nl8zMgo+ICAgICAgICAgIHJhbmdlIDB4MjAwMDAwIDB4MTAwMDAwMCBp
ZiBYODZfNjQKPgo+PiAtIFVwZGF0ZSBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
Y2hvc2VuLnR4dAo+PiBBZGQgY29ycmVzcG9uZGluZyBkb2N1bWVudGF0aW9uIHRvIERvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jaG9zZW4udHh0IHN1Z2dlc3RlZCBieSBBcm5kLgo+
PiAtIEFkZCBUZXN0ZWQtYnkgZnJvbSBKaG9uIGFuZCBwawo+Pgo+PiBDaGFuZ2VzIHNpbmNlIFt2
Nl0KPj4gLSBGaXggYnVpbGQgZXJyb3JzIHJlcG9ydGVkIGJ5IGtidWlsZCB0ZXN0IHJvYm90Lgo+
Pgo+PiBDaGFuZ2VzIHNpbmNlIFt2NV0KPj4gLSBNb3ZlIHJlc2VydmVfY3Jhc2hrZXJuZWxfbG93
KCkgaW50byBrZXJuZWwvY3Jhc2hfY29yZS5jLgo+PiAtIERlbGV0ZSBjcmFzaGtlcm5lbD1YLGhp
Z2guCj4gQW5kIHRoZSBjcmFzaGtlcm5lbD1YLGhpZ2ggYmVpbmcgZGVsZXRlZCBuZWVkIGJlIHRv
bGQgdG9vLiBPdGhlcndpc2UKPiBwZW9wbGUgcmVhZGluZyB0aGUgY29tbWl0IGhhdmUgdG8gY2hl
Y2sgd2h5IHRoZW1zZWx2ZXMuIEkgZGlkbid0IGZvbGxvdwo+IHRoZSBvbGQgdmVyc2lvbiwgY2Fu
J3Qgc2VlIHdoeSAsaGlnaCBjYW4ndCBiZSBzcGVjaWZpZWQgZXhwbGljaXRseS4KPgo+PiAtIE1v
ZGlmeSBjcmFzaGtlcm5lbD1YLGxvdy4KPj4gSWYgY3Jhc2hrZXJuZWw9WCxsb3cgaXMgc3BlY2lm
aWVkIHNpbXVsdGFuZW91c2x5LCByZXNlcnZlIHNwY2lmaWVkIHNpemUgbG93Cj4+IG1lbW9yeSBm
b3IgY3Jhc2gga2R1bXAga2VybmVsIGRldmljZXMgZmlyc3RseSBhbmQgdGhlbiByZXNlcnZlIG1l
bW9yeSBhYm92ZSA0Ry4KPj4gSW4gYWRkaXRpb24sIHJlbmFtZSBjcmFzaGtfbG93X3JlcyBhcyAi
Q3Jhc2gga2VybmVsIChsb3cpIiBmb3IgYXJtNjQsIGFuZCB0aGVuCj4+IHBhc3MgdG8gY3Jhc2gg
ZHVtcCBrZXJuZWwgYnkgRFQgcHJvcGVydHkgImxpbnV4LGxvdy1tZW1vcnktcmFuZ2UiLgo+PiAt
IFVwZGF0ZSBEb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL2tkdW1wL2tkdW1wLnJzdC4KPj4KPj4g
Q2hhbmdlcyBzaW5jZSBbdjRdCj4+IC0gUmVpbXBsZW1lbnQgbWVtYmxvY2tfY2FwX21lbW9yeV9y
YW5nZXMgZm9yIG11bHRpcGxlIHJhbmdlcyBieSBNaWtlLgo+Pgo+PiBDaGFuZ2VzIHNpbmNlIFt2
M10KPj4gLSBBZGQgbWVtYmxvY2tfY2FwX21lbW9yeV9yYW5nZXMgYmFjayBmb3IgbXVsdGlwbGUg
cmFuZ2VzLgo+PiAtIEZpeCBzb21lIGNvbXBpbGluZyB3YXJuaW5ncy4KPj4KPj4gQ2hhbmdlcyBz
aW5jZSBbdjJdCj4+IC0gU3BsaXQgcGF0Y2ggImFybTY0OiBrZHVtcDogc3VwcG9ydCByZXNlcnZp
bmcgY3Jhc2hrZXJuZWwgYWJvdmUgNEciIGFzCj4+IHR3by4gUHV0ICJtb3ZlIHJlc2VydmVfY3Jh
c2hrZXJuZWxfbG93KCkgaW50byBrZXhlY19jb3JlLmMiIGluIGEgc2VwYXJhdGUKPj4gcGF0Y2gu
Cj4+Cj4+IENoYW5nZXMgc2luY2UgW3YxXToKPj4gLSBNb3ZlIGNvbW1vbiByZXNlcnZlX2NyYXNo
a2VybmVsX2xvdygpIGNvZGUgaW50byBrZXJuZWwva2V4ZWNfY29yZS5jLgo+PiAtIFJlbW92ZSBt
ZW1ibG9ja19jYXBfbWVtb3J5X3JhbmdlcygpIGkgYWRkZWQgaW4gdjEgYW5kIGltcGxlbWVudCB0
aGF0Cj4+IGluIGZkdF9lbmZvcmNlX21lbW9yeV9yZWdpb24oKS4KPj4gVGhlcmUgYXJlIGF0IG1v
c3QgdHdvIGNyYXNoIGtlcm5lbCByZWdpb25zLCBmb3IgdHdvIGNyYXNoIGtlcm5lbCByZWdpb25z
Cj4+IGNhc2UsIHdlIGNhcCB0aGUgbWVtb3J5IHJhbmdlIFttaW4ocmVnc1sqXS5zdGFydCksIG1h
eChyZWdzWypdLmVuZCldCj4+IGFuZCB0aGVuIHJlbW92ZSB0aGUgbWVtb3J5IHJhbmdlIGluIHRo
ZSBtaWRkbGUuCj4+Cj4+IFsxXTogaHR0cHM6Ly91cmxkZWZlbnNlLmNvbS92My9fX2h0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL3BpcGVybWFpbC9rZXhlYy8yMDIwLU1heS8wMjUxMjguaHRtbF9f
OyEhR3FpdlBWYTdCcmlvIU5IUUlRVmJWejViUjFTU1A3VTdTd1QzdUhiNk9ueWNQR2E2bk0wb0xU
YVFkWlQ0cGpSc2pyTWpuNUdxT0p3UXMzQzR4JAo+PiBbdjFdOiBodHRwczovL3VybGRlZmVuc2Uu
Y29tL3YzL19faHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkvNC8yLzExNzRfXzshIUdxaXZQVmE3
QnJpbyFOSFFJUVZiVno1YlIxU1NQN1U3U3dUM3VIYjZPbnljUEdhNm5NMG9MVGFRZFpUNHBqUnNq
ck1qbjVHcU9KNmUtbUlFcCQKPj4gW3YyXTogaHR0cHM6Ly91cmxkZWZlbnNlLmNvbS92My9fX2h0
dHBzOi8vbGttbC5vcmcvbGttbC8yMDE5LzQvOS84Nl9fOyEhR3FpdlBWYTdCcmlvIU5IUUlRVmJW
ejViUjFTU1A3VTdTd1QzdUhiNk9ueWNQR2E2bk0wb0xUYVFkWlQ0cGpSc2pyTWpuNUdxT0p5VVZq
VXRhJAo+PiBbdjNdOiBodHRwczovL3VybGRlZmVuc2UuY29tL3YzL19faHR0cHM6Ly9sa21sLm9y
Zy9sa21sLzIwMTkvNC85LzMwNl9fOyEhR3FpdlBWYTdCcmlvIU5IUUlRVmJWejViUjFTU1A3VTdT
d1QzdUhiNk9ueWNQR2E2bk0wb0xUYVFkWlQ0cGpSc2pyTWpuNUdxT0ozQ1hCUmRUJAo+PiBbdjRd
OiBodHRwczovL3VybGRlZmVuc2UuY29tL3YzL19faHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkv
NC8xNS8yNzNfXzshIUdxaXZQVmE3QnJpbyFOSFFJUVZiVno1YlIxU1NQN1U3U3dUM3VIYjZPbnlj
UEdhNm5NMG9MVGFRZFpUNHBqUnNqck1qbjVHcU9KN1N4VzFWaiQKPj4gW3Y1XTogaHR0cHM6Ly91
cmxkZWZlbnNlLmNvbS92My9fX2h0dHBzOi8vbGttbC5vcmcvbGttbC8yMDE5LzUvNi8xMzYwX187
ISFHcWl2UFZhN0JyaW8hTkhRSVFWYlZ6NWJSMVNTUDdVN1N3VDN1SGI2T255Y1BHYTZuTTBvTFRh
UWRaVDRwalJzanJNam41R3FPSjJ3eUo5dGokCj4+IFt2Nl06IGh0dHBzOi8vdXJsZGVmZW5zZS5j
b20vdjMvX19odHRwczovL2xrbWwub3JnL2xrbWwvMjAxOS84LzMwLzE0Ml9fOyEhR3FpdlBWYTdC
cmlvIU5IUUlRVmJWejViUjFTU1A3VTdTd1QzdUhiNk9ueWNQR2E2bk0wb0xUYVFkWlQ0cGpSc2py
TWpuNUdxT0p6dkdoV0JoJAo+PiBbdjddOiBodHRwczovL3VybGRlZmVuc2UuY29tL3YzL19faHR0
cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkvMTIvMjMvNDExX187ISFHcWl2UFZhN0JyaW8hTkhRSVFW
YlZ6NWJSMVNTUDdVN1N3VDN1SGI2T255Y1BHYTZuTTBvTFRhUWRaVDRwalJzanJNam41R3FPSjZw
QWc2dFgkCj4+Cj4+IENoZW4gWmhvdSAoNSk6Cj4+ICAgIHg4Njoga2R1bXA6IG1vdmUgcmVzZXJ2
ZV9jcmFzaGtlcm5lbF9sb3coKSBpbnRvIGNyYXNoX2NvcmUuYwo+PiAgICBhcm02NDoga2R1bXA6
IHJlc2VydmUgY3Jhc2hrZW5lbCBhYm92ZSA0RyBmb3IgY3Jhc2ggZHVtcCBrZXJuZWwKPj4gICAg
YXJtNjQ6IGtkdW1wOiBhZGQgbWVtb3J5IGZvciBkZXZpY2VzIGJ5IERUIHByb3BlcnR5LCBsb3ct
bWVtb3J5LXJhbmdlCj4+ICAgIGtkdW1wOiB1cGRhdGUgRG9jdW1lbnRhdGlvbiBhYm91dCBjcmFz
aGtlcm5lbCBvbiBhcm02NAo+PiAgICBkdC1iaW5kaW5nczogY2hvc2VuOiBEb2N1bWVudCBsaW51
eCxsb3ctbWVtb3J5LXJhbmdlIGZvciBhcm02NCBrZHVtcAo+Pgo+PiAgIERvY3VtZW50YXRpb24v
YWRtaW4tZ3VpZGUva2R1bXAva2R1bXAucnN0ICAgICB8IDEzICsrLQo+PiAgIC4uLi9hZG1pbi1n
dWlkZS9rZXJuZWwtcGFyYW1ldGVycy50eHQgICAgICAgICB8IDEyICsrLQo+PiAgIERvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jaG9zZW4udHh0ICB8IDI1ICsrKysrKwo+PiAgIGFy
Y2gvYXJtNjQva2VybmVsL3NldHVwLmMgICAgICAgICAgICAgICAgICAgICB8ICA4ICstCj4+ICAg
YXJjaC9hcm02NC9tbS9pbml0LmMgICAgICAgICAgICAgICAgICAgICAgICAgIHwgNjEgKysrKysr
KysrKysrLQo+PiAgIGFyY2gveDg2L2tlcm5lbC9zZXR1cC5jICAgICAgICAgICAgICAgICAgICAg
ICB8IDY2ICsrLS0tLS0tLS0tLS0tCj4+ICAgaW5jbHVkZS9saW51eC9jcmFzaF9jb3JlLmggICAg
ICAgICAgICAgICAgICAgIHwgIDMgKwo+PiAgIGluY2x1ZGUvbGludXgva2V4ZWMuaCAgICAgICAg
ICAgICAgICAgICAgICAgICB8ICAyIC0KPj4gICBrZXJuZWwvY3Jhc2hfY29yZS5jICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfCA4NSArKysrKysrKysrKysrKysrKysrCj4+ICAga2VybmVsL2tl
eGVjX2NvcmUuYyAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMTcgLS0tLQo+PiAgIDEwIGZp
bGVzIGNoYW5nZWQsIDIwOCBpbnNlcnRpb25zKCspLCA4NCBkZWxldGlvbnMoLSkKPj4KPj4gLS0g
Cj4+IDIuMjAuMQo+Pgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+PiBrZXhlYyBtYWlsaW5nIGxpc3QKPj4ga2V4ZWNAbGlzdHMuaW5mcmFkZWFk
Lm9yZwo+PiBodHRwczovL3VybGRlZmVuc2UuY29tL3YzL19faHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlY19fOyEhR3FpdlBWYTdCcmlvIU5IUUlRVmJWejVi
UjFTU1A3VTdTd1QzdUhiNk9ueWNQR2E2bk0wb0xUYVFkWlQ0cGpSc2pyTWpuNUdxT0p3d1g4SFNs
JAo+PgoKCgpIaSwKCgoKVGhpcyBwcm9wb3NhbCB0byBpbXByb3ZlIHZtY29yZSBjcmVhdGlvbiBv
biBBcm3CoCBoYXMgYmVlbiBnb2luZyBvbiBmb3IgCmFsbW9zdCBhIHllYXIgbm93LgoKV2hvIGlz
IHRoZcKgIGZpbmFsIG1haW50YWluZXIgdGhhdCBuZWVkcyB0byBhcHByb3ZlIGFuZCBleGNlcHQg
dGhlc2UgPwoKV2hhdCBhcmUgdGhlIGxpbmdlcmluZyBpc3N1ZXMgdGhhdCBhcmUgcmVtYWluaW5n
IHNvIHdlIGdldCB0aGVzZSAKYWNjZXB0ZWQgaW50byBhIHVwc3RyZWFtIGNvbW1pdCA/CgoKVGhh
bmsgeW91LgoKSm9obi4KCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
