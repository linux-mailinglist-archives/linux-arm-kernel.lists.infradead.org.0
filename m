Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5931ED373
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 17:33:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VRU7C8FTqT8QPpdWiJV0fG47xJsvO66d1cYgHJOZHIk=; b=ScpcJcDbRYLt7O
	gln953T2BH0bErsZzBfBlW7BLsYB1XZZJh/5al5wodzD/BONBFR5vLWdII+F1soQ2e4O3n7F7JsXY
	j5Jn6EC6nEtwGNMZBqtDxzq1yN44wE0HTeZAoUXH5a3y9PnczclQLKMB1byJxkKdw13TXrSSVRHnK
	ckwx34nnDR00+SJZpAtod+qxLAUrshCe4I1QU/Q+Vv+CAo17TiygEA8RehV8/ZR1ykkFOvc4cuyrR
	LglZzJAsJn6SmCcaFgnCn6NS0QLgIJ/iVQLelc5bwOFRv2YD8dXY7nDM2mAgNskRjO9Y7gwrD/1Gb
	G8y47Dyloegx1BHGvUAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgVOZ-0007mn-DV; Wed, 03 Jun 2020 15:33:35 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgVOQ-0007lM-1l; Wed, 03 Jun 2020 15:33:28 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 053FLw9B103365;
 Wed, 3 Jun 2020 15:32:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2020-01-29; bh=R1ouRWkphyvKhgg8PAOWIIb5/qmWoMuTWk0DZDk+Xn0=;
 b=A/SwLVZ5LW93KBpAAlmca7jox1aqMj+59p0AGogZuEjVzrk+NR//C3h09naX8QlRVxVY
 MjnDTuhEEE4H7ug56CK+WXQdqVvvVrU2Wa14vpfDI6ZJB0oQ48OQG3QN2+lHY6pyyM1H
 o3jJfbXV6dI9EFT4pVunSsdiLppW0DZSwq1Y8O+Eg63u6s+Ks/FGPkOsZlW691Z2VA5a
 CAPu+HUsXlLZ4R18CLgEsAe7BmcQ6GjXVrn08zvRPf6X4LqufO81FQNai4/UIVIRwuAX
 FxdThYtVudUhYhxuNe2l2lYyG/Sf2TqTYItpH4THxVPEHpjJsGdS4hUC0erJLT7AhnNW eA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 31bewr219d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 03 Jun 2020 15:32:45 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 053FI3gP098896;
 Wed, 3 Jun 2020 15:30:45 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 31dju3dpfd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 03 Jun 2020 15:30:43 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 053FUY4n020909;
 Wed, 3 Jun 2020 15:30:34 GMT
Received: from dhcp-10-154-181-144.vpn.oracle.com (/10.154.181.144)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 03 Jun 2020 08:30:34 -0700
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [PATCH v8 0/5] support reserving crashkernel above 4G on arm64
 kdump
From: John Donnelly <john.p.donnelly@oracle.com>
In-Reply-To: <8463464e-5461-f328-621c-bacc6a3b88dd@huawei.com>
Date: Wed, 3 Jun 2020 10:30:27 -0500
Message-Id: <8E0D45DC-12BF-437D-A342-03E974D9C6D4@oracle.com>
References: <20200521093805.64398-1-chenzhou10@huawei.com>
 <CAJ2QiJ+1Hj2OQzpR5CfvLGMfTTbXAST94hsbfm0VcDmJKV3WTw@mail.gmail.com>
 <303695cc-d3ea-9f51-1489-07d27d4253d4@oracle.com>
 <CACi5LpOZzdfEKUYAfYxtgeUbk9K6YFVUKLaGS8XoS0kForjH9A@mail.gmail.com>
 <F64A309C-B9C0-45F2-A50D-D677005C33A6@oracle.com>
 <CAJ2QiJJE-jeRL1HPUZCwi1LtV9CBMmYrsOaS6vX1R1sJ6Z1t8g@mail.gmail.com>
 <6EA47B07-5119-49DF-9980-12A2066F22CA@oracle.com>
 <CAJ2QiJJhUCnobrMHui5=6zLzgy3KsoPxrqiH_oYT8Jhb5MkmbA@mail.gmail.com>
 <8463464e-5461-f328-621c-bacc6a3b88dd@huawei.com>
To: chenzhou <chenzhou10@huawei.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9641
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxlogscore=999
 phishscore=0 malwarescore=0 mlxscore=0 adultscore=0 bulkscore=0
 suspectscore=1 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006030122
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9641
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 bulkscore=0
 phishscore=0 suspectscore=1 impostorscore=0 cotscore=-2147483648
 lowpriorityscore=0 mlxscore=0 adultscore=0 spamscore=0 mlxlogscore=999
 malwarescore=0 clxscore=1011 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2006030122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_083326_178013_ADD412A6 
X-CRM114-Status: GOOD (  23.81  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.86 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Simon Horman <horms@verge.net.au>,
 Devicetree List <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Baoquan He <bhe@redhat.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, guohanjun@huawei.com,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Will Deacon <will@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 James Morse <james.morse@arm.com>, nsaenzjulienne@suse.de,
 Prabhakar Kushwaha <prabhakar.pkin@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Prabhakar Kushwaha <pkushwaha@marvell.com>, RuiRui Yang <dyoung@redhat.com>,
 Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIEp1biAzLCAyMDIwLCBhdCA4OjIwIEFNLCBjaGVuemhvdSA8Y2hlbnpob3UxMEBodWF3
ZWkuY29tPiB3cm90ZToKPiAKPiBIaSwKPiAKPiAKPiBPbiAyMDIwLzYvMyAxOTo0NywgUHJhYmhh
a2FyIEt1c2h3YWhhIHdyb3RlOgo+PiBIaSBDaGVuLAo+PiAKPj4gT24gVHVlLCBKdW4gMiwgMjAy
MCBhdCA4OjEyIFBNIEpvaG4gRG9ubmVsbHkgPGpvaG4ucC5kb25uZWxseUBvcmFjbGUuY29tPiB3
cm90ZToKPj4+IAo+Pj4gCj4+Pj4gT24gSnVuIDIsIDIwMjAsIGF0IDEyOjM4IEFNLCBQcmFiaGFr
YXIgS3VzaHdhaGEgPHByYWJoYWthci5wa2luQGdtYWlsLmNvbT4gd3JvdGU6Cj4+Pj4gCj4+Pj4g
T24gVHVlLCBKdW4gMiwgMjAyMCBhdCAzOjI5IEFNIEpvaG4gRG9ubmVsbHkgPGpvaG4ucC5kb25u
ZWxseUBvcmFjbGUuY29tPiB3cm90ZToKPj4+Pj4gSGkgLiAgU2VlIGJlbG93ICEKPj4+Pj4gCj4+
Pj4+PiBPbiBKdW4gMSwgMjAyMCwgYXQgNDowMiBQTSwgQmh1cGVzaCBTaGFybWEgPGJoc2hhcm1h
QHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4+Pj4gCj4+Pj4+PiBIaSBKb2huLAo+Pj4+Pj4gCj4+Pj4+
PiBPbiBUdWUsIEp1biAyLCAyMDIwIGF0IDE6MDEgQU0gSm9obiBEb25uZWxseSA8Sm9obi5QLmRv
bm5lbGx5QG9yYWNsZS5jb20+IHdyb3RlOgo+Pj4+Pj4+IEhpLAo+Pj4+Pj4+IAo+Pj4+Pj4+IAo+
Pj4+Pj4+IE9uIDYvMS8yMCA3OjAyIEFNLCBQcmFiaGFrYXIgS3VzaHdhaGEgd3JvdGU6Cj4+Pj4+
Pj4+IEhpIENoZW4sCj4+Pj4+Pj4+IAo+Pj4+Pj4+PiBPbiBUaHUsIE1heSAyMSwgMjAyMCBhdCAz
OjA1IFBNIENoZW4gWmhvdSA8Y2hlbnpob3UxMEBodWF3ZWkuY29tPiB3cm90ZToKPj4+Pj4+Pj4+
IFRoaXMgcGF0Y2ggc2VyaWVzIGVuYWJsZSByZXNlcnZpbmcgY3Jhc2hrZXJuZWwgYWJvdmUgNEcg
aW4gYXJtNjQuCj4+Pj4+Pj4+PiAKPj4+Pj4+Pj4+IFRoZXJlIGFyZSBmb2xsb3dpbmcgaXNzdWVz
IGluIGFybTY0IGtkdW1wOgo+Pj4+Pj4+Pj4gMS4gV2UgdXNlIGNyYXNoa2VybmVsPVggdG8gcmVz
ZXJ2ZSBjcmFzaGtlcm5lbCBiZWxvdyA0Rywgd2hpY2ggd2lsbCBmYWlsCj4+Pj4+Pj4+PiB3aGVu
IHRoZXJlIGlzIG5vIGVub3VnaCBsb3cgbWVtb3J5Lgo+Pj4+Pj4+Pj4gMi4gQ3VycmVudGx5LCBj
cmFzaGtlcm5lbD1ZQFggY2FuIGJlIHVzZWQgdG8gcmVzZXJ2ZSBjcmFzaGtlcm5lbCBhYm92ZSA0
RywKPj4+Pj4+Pj4+IGluIHRoaXMgY2FzZSwgaWYgc3dpb3RsYiBvciBETUEgYnVmZmVycyBhcmUg
cmVxdWlyZWQsIGNyYXNoIGR1bXAga2VybmVsCj4+Pj4+Pj4+PiB3aWxsIGJvb3QgZmFpbHVyZSBi
ZWNhdXNlIHRoZXJlIGlzIG5vIGxvdyBtZW1vcnkgYXZhaWxhYmxlIGZvciBhbGxvY2F0aW9uLgo+
Pj4+Pj4+Pj4gCj4+Pj4+Pj4+IFdlIGFyZSBnZXR0aW5nICJ3YXJuX2FsbG9jIiBbMV0gd2Fybmlu
ZyBkdXJpbmcgYm9vdCBvZiBrZHVtcCBrZXJuZWwKPj4+Pj4+Pj4gd2l0aCBib290YXJncyBhcyBb
Ml0gb2YgcHJpbWFyeSBrZXJuZWwuCj4+Pj4+Pj4+IFRoaXMgZXJyb3Igb2JzZXJ2ZWQgb24gVGh1
bmRlclgyICBBUk02NCBwbGF0Zm9ybS4KPj4+Pj4+Pj4gCj4+Pj4+Pj4+IEl0IGlzIG9ic2VydmVk
IHdpdGggbGF0ZXN0IHVwc3RyZWFtIHRhZyAodjUuNy1yYzMpIHdpdGggdGhpcyBwYXRjaCBzZXQK
Pj4+Pj4+Pj4gYW5kIGh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMvX19odHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvcGlwZXJtYWlsL2tleGVjLzIwMjAtTWF5LzAyNTEyOC5odG1sX187ISFHcWl2
UFZhN0JyaW8hTG5UU0FSa0N0MFYwRm96UjBLbXFvb2FINUFEdGRYdnMzbVBkUDNLUlZxQUxtdlNL
MlZtQ2tJUEloc2F4YmlJQUFsenUkCj4+Pj4+Pj4+IEFsc28gKip3aXRob3V0KiogdGhpcyBwYXRj
aC1zZXQKPj4+Pj4+Pj4gImh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMvX19odHRwczovL3d3dy5z
cGluaWNzLm5ldC9saXN0cy9hcm0ta2VybmVsL21zZzgwNjg4Mi5odG1sX187ISFHcWl2UFZhN0Jy
aW8hTG5UU0FSa0N0MFYwRm96UjBLbXFvb2FINUFEdGRYdnMzbVBkUDNLUlZxQUxtdlNLMlZtQ2tJ
UEloc2F4YmpDNnVqTUEkIgo+Pj4+Pj4+PiAKPj4+Pj4+Pj4gVGhpcyBpc3N1ZSBjb21lcyB3aGVu
ZXZlciBjcmFzaGtlcm5lbCBtZW1vcnkgaXMgcmVzZXJ2ZWQgYWZ0ZXIgMHhjMDAwXzAwMDAuCj4+
Pj4+Pj4+IE1vcmUgZGV0YWlscyBkaXNjdXNzZWQgZWFybGllciBpbgo+Pj4+Pj4+PiBodHRwczov
L3VybGRlZmVuc2UuY29tL3YzL19faHR0cHM6Ly93d3cuc3Bpbmljcy5uZXQvbGlzdHMvYXJtLWtl
cm5lbC9tc2c4MDY4ODIuaHRtbF9fOyEhR3FpdlBWYTdCcmlvIUxuVFNBUmtDdDBWMEZvelIwS21x
b29hSDVBRHRkWHZzM21QZFAzS1JWcUFMbXZTSzJWbUNrSVBJaHNheGJqQzZ1ak1BJCAgd2l0aG91
dCBhbnkKPj4+Pj4+Pj4gc29sdXRpb24KPj4+Pj4+Pj4gCj4+Pj4+Pj4+IFRoaXMgcGF0Y2gtc2V0
IGlzIGV4cGVjdGVkIHRvIHNvbHZlIHNpbWlsYXIga2luZCBvZiBpc3N1ZS4KPj4+Pj4+Pj4gaS5l
LiBsb3cgbWVtb3J5IGlzIG9ubHkgdGFyZ2V0ZWQgZm9yIERNQSwgc3dpb3RsYjsgU28gYWJvdmUg
bWVudGlvbmVkCj4+Pj4+Pj4+IG9ic2VydmF0aW9uIHNob3VsZCBiZSBjb25zaWRlcmVkL2ZpeGVk
LiAuCj4+Pj4+Pj4+IAo+Pj4+Pj4+PiAtLXBrCj4+Pj4+Pj4+IAo+Pj4+Pj4+PiBbMV0KPj4+Pj4+
Pj4gWyAgIDMwLjM2NjY5NV0gRE1JOiBDYXZpdW0gSW5jLiBTYWJlci9TYWJlciwgQklPUwo+Pj4+
Pj4+PiBUWDItRlctUmVsZWFzZS0zLjEtYnVpbGRfMDEtMjgwMy1nNzQyNTNhNTQxYSBtbS9kZC95
eXl5Cj4+Pj4+Pj4+IFsgICAzMC4zNjc2OTZdIE5FVDogUmVnaXN0ZXJlZCBwcm90b2NvbCBmYW1p
bHkgMTYKPj4+Pj4+Pj4gWyAgIDMwLjM2OTk3M10gc3dhcHBlci8wOiBwYWdlIGFsbG9jYXRpb24g
ZmFpbHVyZTogb3JkZXI6NiwKPj4+Pj4+Pj4gbW9kZToweDEoR0ZQX0RNQSksIG5vZGVtYXNrPShu
dWxsKSxjcHVzZXQ9LyxtZW1zX2FsbG93ZWQ9MAo+Pj4+Pj4+PiBbICAgMzAuMzY5OTgwXSBDUFU6
IDAgUElEOiAxIENvbW06IHN3YXBwZXIvMCBOb3QgdGFpbnRlZCA1LjcuMC1yYzMrICMxMjEKPj4+
Pj4+Pj4gWyAgIDMwLjM2OTk4MV0gSGFyZHdhcmUgbmFtZTogQ2F2aXVtIEluYy4gU2FiZXIvU2Fi
ZXIsIEJJT1MKPj4+Pj4+Pj4gVFgyLUZXLVJlbGVhc2UtMy4xLWJ1aWxkXzAxLTI4MDMtZzc0MjUz
YTU0MWEgbW0vZGQveXl5eQo+Pj4+Pj4+PiBbICAgMzAuMzY5OTg0XSBDYWxsIHRyYWNlOgo+Pj4+
Pj4+PiBbICAgMzAuMzY5OTg5XSAgZHVtcF9iYWNrdHJhY2UrMHgwLzB4MWY4Cj4+Pj4+Pj4+IFsg
ICAzMC4zNjk5OTFdICBzaG93X3N0YWNrKzB4MjAvMHgzMAo+Pj4+Pj4+PiBbICAgMzAuMzY5OTk3
XSAgZHVtcF9zdGFjaysweGMwLzB4MTBjCj4+Pj4+Pj4+IFsgICAzMC4zNzAwMDFdICB3YXJuX2Fs
bG9jKzB4MTBjLzB4MTc4Cj4+Pj4+Pj4+IFsgICAzMC4zNzAwMDRdICBfX2FsbG9jX3BhZ2VzX3Ns
b3dwYXRoLmNvbnN0cHJvcC4xMTErMHhiMTAvMHhiNTAKPj4+Pj4+Pj4gWyAgIDMwLjM3MDAwNl0g
IF9fYWxsb2NfcGFnZXNfbm9kZW1hc2srMHgyYjQvMHgzMDAKPj4+Pj4+Pj4gWyAgIDMwLjM3MDAw
OF0gIGFsbG9jX3BhZ2VfaW50ZXJsZWF2ZSsweDI0LzB4OTgKPj4+Pj4+Pj4gWyAgIDMwLjM3MDAx
MV0gIGFsbG9jX3BhZ2VzX2N1cnJlbnQrMHhlNC8weDEwOAo+Pj4+Pj4+PiBbICAgMzAuMzcwMDE3
XSAgZG1hX2F0b21pY19wb29sX2luaXQrMHg0NC8weDFhNAo+Pj4+Pj4+PiBbICAgMzAuMzcwMDIw
XSAgZG9fb25lX2luaXRjYWxsKzB4NTQvMHgyMjgKPj4+Pj4+Pj4gWyAgIDMwLjM3MDAyN10gIGtl
cm5lbF9pbml0X2ZyZWVhYmxlKzB4MjI4LzB4MmNjCj4+Pj4+Pj4+IFsgICAzMC4zNzAwMzFdICBr
ZXJuZWxfaW5pdCsweDFjLzB4MTEwCj4+Pj4+Pj4+IFsgICAzMC4zNzAwMzRdICByZXRfZnJvbV9m
b3JrKzB4MTAvMHgxOAo+Pj4+Pj4+PiBbICAgMzAuMzcwMDM2XSBNZW0tSW5mbzoKPj4+Pj4+Pj4g
WyAgIDMwLjM3MDA2NF0gYWN0aXZlX2Fub246MCBpbmFjdGl2ZV9hbm9uOjAgaXNvbGF0ZWRfYW5v
bjowCj4+Pj4+Pj4+IFsgICAzMC4zNzAwNjRdICBhY3RpdmVfZmlsZTowIGluYWN0aXZlX2ZpbGU6
MCBpc29sYXRlZF9maWxlOjAKPj4+Pj4+Pj4gWyAgIDMwLjM3MDA2NF0gIHVuZXZpY3RhYmxlOjAg
ZGlydHk6MCB3cml0ZWJhY2s6MCB1bnN0YWJsZTowCj4+Pj4+Pj4+IFsgICAzMC4zNzAwNjRdICBz
bGFiX3JlY2xhaW1hYmxlOjM0IHNsYWJfdW5yZWNsYWltYWJsZTo0NDM4Cj4+Pj4+Pj4+IFsgICAz
MC4zNzAwNjRdICBtYXBwZWQ6MCBzaG1lbTowIHBhZ2V0YWJsZXM6MTQgYm91bmNlOjAKPj4+Pj4+
Pj4gWyAgIDMwLjM3MDA2NF0gIGZyZWU6MTUzNzcxOSBmcmVlX3BjcDoyMTkgZnJlZV9jbWE6MAo+
Pj4+Pj4+PiBbICAgMzAuMzcwMDcwXSBOb2RlIDAgYWN0aXZlX2Fub246MGtCIGluYWN0aXZlX2Fu
b246MGtCCj4+Pj4+Pj4+IGFjdGl2ZV9maWxlOjBrQiBpbmFjdGl2ZV9maWxlOjBrQiB1bmV2aWN0
YWJsZTowa0IgaXNvbGF0ZWQoYW5vbik6MGtCCj4+Pj4+Pj4+IGlzb2xhdGVkKGZpbGUpOjBrQiBt
YXBwZWQ6MGtCIGRpcnR5OjBrQiB3cml0ZWJhY2s6MGtCIHNobWVtOjBrQgo+Pj4+Pj4+PiBzaG1l
bV90aHA6IDBrQiBzaG1lbV9wbWRtYXBwZWQ6IDBrQiBhbm9uX3RocDogMGtCIHdyaXRlYmFja190
bXA6MGtCCj4+Pj4+Pj4+IHVuc3RhYmxlOjBrQiBhbGxfdW5yZWNsYWltYWJsZT8gbm8KPj4+Pj4+
Pj4gWyAgIDMwLjM3MDA3M10gTm9kZSAxIGFjdGl2ZV9hbm9uOjBrQiBpbmFjdGl2ZV9hbm9uOjBr
Qgo+Pj4+Pj4+PiBhY3RpdmVfZmlsZTowa0IgaW5hY3RpdmVfZmlsZTowa0IgdW5ldmljdGFibGU6
MGtCIGlzb2xhdGVkKGFub24pOjBrQgo+Pj4+Pj4+PiBpc29sYXRlZChmaWxlKTowa0IgbWFwcGVk
OjBrQiBkaXJ0eTowa0Igd3JpdGViYWNrOjBrQiBzaG1lbTowa0IKPj4+Pj4+Pj4gc2htZW1fdGhw
OiAwa0Igc2htZW1fcG1kbWFwcGVkOiAwa0IgYW5vbl90aHA6IDBrQiB3cml0ZWJhY2tfdG1wOjBr
Qgo+Pj4+Pj4+PiB1bnN0YWJsZTowa0IgYWxsX3VucmVjbGFpbWFibGU/IG5vCj4+Pj4+Pj4+IFsg
ICAzMC4zNzAwNzldIE5vZGUgMCBETUEgZnJlZTowa0IgbWluOjBrQiBsb3c6MGtCIGhpZ2g6MGtC
Cj4+Pj4+Pj4+IHJlc2VydmVkX2hpZ2hhdG9taWM6MEtCIGFjdGl2ZV9hbm9uOjBrQiBpbmFjdGl2
ZV9hbm9uOjBrQgo+Pj4+Pj4+PiBhY3RpdmVfZmlsZTowa0IgaW5hY3RpdmVfZmlsZTowa0IgdW5l
dmljdGFibGU6MGtCIHdyaXRlcGVuZGluZzowa0IKPj4+Pj4+Pj4gcHJlc2VudDoxMjhrQiBtYW5h
Z2VkOjBrQiBtbG9ja2VkOjBrQiBrZXJuZWxfc3RhY2s6MGtCIHBhZ2V0YWJsZXM6MGtCCj4+Pj4+
Pj4+IGJvdW5jZTowa0IgZnJlZV9wY3A6MGtCIGxvY2FsX3BjcDowa0IgZnJlZV9jbWE6MGtCCj4+
Pj4+Pj4+IFsgICAzMC4zNzAwODRdIGxvd21lbV9yZXNlcnZlW106IDAgMjUwIDYwNjMgNjA2Mwo+
Pj4+Pj4+PiBbICAgMzAuMzcwMDkwXSBOb2RlIDAgRE1BMzIgZnJlZToyNTYwMDBrQiBtaW46NDA4
a0IgbG93OjY2NGtCCj4+Pj4+Pj4+IGhpZ2g6OTIwa0IgcmVzZXJ2ZWRfaGlnaGF0b21pYzowS0Ig
YWN0aXZlX2Fub246MGtCIGluYWN0aXZlX2Fub246MGtCCj4+Pj4+Pj4+IGFjdGl2ZV9maWxlOjBr
QiBpbmFjdGl2ZV9maWxlOjBrQiB1bmV2aWN0YWJsZTowa0Igd3JpdGVwZW5kaW5nOjBrQgo+Pj4+
Pj4+PiBwcmVzZW50OjI2OTcwMGtCIG1hbmFnZWQ6MjU2MDAwa0IgbWxvY2tlZDowa0Iga2VybmVs
X3N0YWNrOjBrQgo+Pj4+Pj4+PiBwYWdldGFibGVzOjBrQiBib3VuY2U6MGtCIGZyZWVfcGNwOjBr
QiBsb2NhbF9wY3A6MGtCIGZyZWVfY21hOjBrQgo+Pj4+Pj4+PiBbICAgMzAuMzcwMDk0XSBsb3dt
ZW1fcmVzZXJ2ZVtdOiAwIDAgNTgxMyA1ODEzCj4+Pj4+Pj4+IFsgICAzMC4zNzAxMDBdIE5vZGUg
MCBOb3JtYWwgZnJlZTo1ODk0ODc2a0IgbWluOjk1NTJrQiBsb3c6MTU1MDRrQgo+Pj4+Pj4+PiBo
aWdoOjIxNDU2a0IgcmVzZXJ2ZWRfaGlnaGF0b21pYzowS0IgYWN0aXZlX2Fub246MGtCIGluYWN0
aXZlX2Fub246MGtCCj4+Pj4+Pj4+IGFjdGl2ZV9maWxlOjBrQiBpbmFjdGl2ZV9maWxlOjBrQiB1
bmV2aWN0YWJsZTowa0Igd3JpdGVwZW5kaW5nOjBrQgo+Pj4+Pj4+PiBwcmVzZW50OjgzODg2MDhr
QiBtYW5hZ2VkOjU5NTMxMTJrQiBtbG9ja2VkOjBrQiBrZXJuZWxfc3RhY2s6MjE2NzJrQgo+Pj4+
Pj4+PiBwYWdldGFibGVzOjU2a0IgYm91bmNlOjBrQiBmcmVlX3BjcDo4NzZrQiBsb2NhbF9wY3A6
MTc2a0IgZnJlZV9jbWE6MGtCCj4+Pj4+Pj4+IFsgICAzMC4zNzAxMDRdIGxvd21lbV9yZXNlcnZl
W106IDAgMCAwIDAKPj4+Pj4+Pj4gWyAgIDMwLjM3MDEwN10gTm9kZSAwIERNQTogMCo0a0IgMCo4
a0IgMCoxNmtCIDAqMzJrQiAwKjY0a0IgMCoxMjhrQgo+Pj4+Pj4+PiAwKjI1NmtCIDAqNTEya0Ig
MCoxMDI0a0IgMCoyMDQ4a0IgMCo0MDk2a0IgPSAwa0IKPj4+Pj4+Pj4gWyAgIDMwLjM3MDExM10g
Tm9kZSAwIERNQTMyOiAwKjRrQiAwKjhrQiAwKjE2a0IgMCozMmtCIDAqNjRrQiAwKjEyOGtCCj4+
Pj4+Pj4+IDAqMjU2a0IgMCo1MTJrQiAwKjEwMjRrQiAxKjIwNDhrQiAoTSkgNjIqNDA5NmtCIChN
KSA9IDI1NjAwMGtCCj4+Pj4+Pj4+IFsgICAzMC4zNzAxMTldIE5vZGUgMCBOb3JtYWw6IDIqNGtC
IChNKSAzKjhrQiAoTUUpIDIqMTZrQiAoVUUpIDMqMzJrQgo+Pj4+Pj4+PiAoVU0pIDEqNjRrQiAo
VSkgMioxMjhrQiAoTSkgMioyNTZrQiAoTUUpIDMqNTEya0IgKE1FKSAzKjEwMjRrQiAoTUUpCj4+
Pj4+Pj4+IDMqMjA0OGtCIChVTUUpIDE0MzYqNDA5NmtCIChNKSA9IDU4OTM2MDBrQgo+Pj4+Pj4+
PiBbICAgMzAuMzcwMTI5XSBOb2RlIDAgaHVnZXBhZ2VzX3RvdGFsPTAgaHVnZXBhZ2VzX2ZyZWU9
MAo+Pj4+Pj4+PiBodWdlcGFnZXNfc3VycD0wIGh1Z2VwYWdlc19zaXplPTEwNDg1NzZrQgo+Pj4+
Pj4+PiBbICAgMzAuMzcwMTMwXSAwIHRvdGFsIHBhZ2VjYWNoZSBwYWdlcwo+Pj4+Pj4+PiBbICAg
MzAuMzcwMTMyXSAwIHBhZ2VzIGluIHN3YXAgY2FjaGUKPj4+Pj4+Pj4gWyAgIDMwLjM3MDEzNF0g
U3dhcCBjYWNoZSBzdGF0czogYWRkIDAsIGRlbGV0ZSAwLCBmaW5kIDAvMAo+Pj4+Pj4+PiBbICAg
MzAuMzcwMTM1XSBGcmVlIHN3YXAgID0gMGtCCj4+Pj4+Pj4+IFsgICAzMC4zNzAxMzZdIFRvdGFs
IHN3YXAgPSAwa0IKPj4+Pj4+Pj4gWyAgIDMwLjM3MDEzN10gMjE2NDYwOSBwYWdlcyBSQU0KPj4+
Pj4+Pj4gWyAgIDMwLjM3MDEzOV0gMCBwYWdlcyBIaWdoTWVtL01vdmFibGVPbmx5Cj4+Pj4+Pj4+
IFsgICAzMC4zNzAxNDBdIDYxMjMzMSBwYWdlcyByZXNlcnZlZAo+Pj4+Pj4+PiBbICAgMzAuMzcw
MTQxXSAwIHBhZ2VzIGh3cG9pc29uZWQKPj4+Pj4+Pj4gWyAgIDMwLjM3MDE0M10gRE1BOiBmYWls
ZWQgdG8gYWxsb2NhdGUgMjU2IEtpQiBwb29sIGZvciBhdG9taWMKPj4+Pj4+Pj4gY29oZXJlbnQg
YWxsb2NhdGlvbgo+Pj4+Pj4+IAo+Pj4+Pj4+IER1cmluZyBteSB0ZXN0aW5nIEkgc2F3IHRoZSBz
YW1lIGVycm9yIGFuZCBDaGVuJ3MgIHNvbHV0aW9uIGNvcnJlY3RlZCBpdCAuCj4+Pj4+PiBXaGlj
aCBjb21iaW5hdGlvbiB5b3UgYXJlIHVzaW5nIG9uIHlvdXIgc2lkZT8gSSBhbSB1c2luZyBQcmFi
aGFrYXIncwo+Pj4+Pj4gc3VnZ2VzdGVkIGVudmlyb25tZW50IGFuZCBjYW4gcmVwcm9kdWNlIHRo
ZSBpc3N1ZQo+Pj4+Pj4gd2l0aCBvciB3aXRob3V0IENoZW4ncyBjcmFzaGtlcm5lbCBzdXBwb3J0
IGFib3ZlIDRHIHBhdGNoc2V0Lgo+Pj4+Pj4gCj4+Pj4+PiBJIGFtIGFsc28gdXNpbmcgYSBUaHVu
ZGVyWDIgcGxhdGZvcm0gd2l0aCBsYXRlc3QgbWFrZWR1bXBmaWxlIGNvZGUgYW5kCj4+Pj4+PiBr
ZXhlYy10b29scyAod2l0aCB0aGUgc3VnZ2VzdGVkIHBhdGNoCj4+Pj4+PiA8aHR0cHM6Ly91cmxk
ZWZlbnNlLmNvbS92My9fX2h0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9waXBlcm1haWwva2V4
ZWMvMjAyMC1NYXkvMDI1MTI4Lmh0bWxfXzshIUdxaXZQVmE3QnJpbyFKNmxVaWc1OC1HdzZUS1pu
RUVZekVlU1UzNlQtMVNxbEIxa0ltVTAweHRYX2xzczVUeC1KYlVtTEU5VEpDM2ZvWEJMZyQgPiku
Cj4+Pj4+PiAKPj4+Pj4+IFRoYW5rcywKPj4+Pj4+IEJodXBlc2gKPj4+Pj4gCj4+Pj4+IEkgZGlk
IHRoaXMgYWN0aXZpdHkgNSBtb250aHMgYWdvIGFuZCBJIGhhdmUgbW92ZWQgb24gdG8gb3RoZXIg
YWN0aXZpdGllcy4gTXkgRE1BIGZhaWx1cmVzIHdlcmUgcmVsYXRlZCB0byBQQ0kgZGV2aWNlcyB0
aGF0IGNvdWxkIG5vdCBiZSBlbnVtZXJhdGVkIGJlY2F1c2UgIGxvdy1ETUEgc3BhY2Ugd2FzIG5v
dCAgYXZhaWxhYmxlIHdoZW4gY3Jhc2hrZXJuZWwgd2FzIG1vdmVkIGFib3ZlIDRHOyBJIGRvbuKA
mXQgcmVjYWxsIHRoZSBleGFjdCBwbGF0Zm9ybS4KPj4+Pj4gCj4+Pj4+IAo+Pj4+PiAKPj4+Pj4g
Rm9yIHRoaXMgZmFpbHVyZSAsCj4+Pj4+IAo+Pj4+Pj4+PiBETUE6IGZhaWxlZCB0byBhbGxvY2F0
ZSAyNTYgS2lCIHBvb2wgZm9yIGF0b21pYwo+Pj4+Pj4+PiBjb2hlcmVudCBhbGxvY2F0aW9uCj4+
Pj4+IAo+Pj4+PiBJcyBkdWUgdG8gOgo+Pj4+PiAKPj4+Pj4gCj4+Pj4+IDM2MTgwODJjCj4+Pj4+
ICgiYXJtNjQgdXNlIGJvdGggWk9ORV9ETUEgYW5kIFpPTkVfRE1BMzIiKQo+Pj4+PiAKPj4+Pj4g
V2l0aCB0aGUgaW50cm9kdWN0aW9uIG9mIFpPTkVfRE1BIHRvIHN1cHBvcnQgdGhlIFJhc3BiZXJy
eSBETUEKPj4+Pj4gcmVnaW9uIGJlbG93IDFHLCB0aGUgY3Jhc2hrZXJuZWwgaXMgcGxhY2VkIGlu
IHRoZSB1cHBlciA0Rwo+Pj4+PiBaT05FX0RNQV8zMiByZWdpb24uIFNpbmNlIHRoZSBjcmFzaGtl
cm5lbCBkb2VzIG5vdCBoYXZlIGFjY2Vzcwo+Pj4+PiB0byB0aGUgWk9ORV9ETUEgcmVnaW9uLCBp
dCBwcmludHMgb3V0IGNhbGwgdHJhY2UgZHVyaW5nIGJvb3R1cC4KPj4+Pj4gCj4+Pj4+IEl0IGlz
IGR1ZSB0byBoYXZpbmcgdGhpcyBDT05GSUcgaXRlbSAgT04gIDoKPj4+Pj4gCj4+Pj4+IAo+Pj4+
PiBDT05GSUdfWk9ORV9ETUE9eQo+Pj4+PiAKPj4+Pj4gVHVybmluZyBvZmYgWk9ORV9ETUEgZml4
ZXMgYSBpc3N1ZSBhbmQgUmFzcGJlcnJ5IFBJIDQgd2lsbAo+Pj4+PiB1c2UgdGhlIGRldmljZSB0
cmVlIHRvIHNwZWNpZnkgbWVtb3J5IGJlbG93IDFHLgo+Pj4+PiAKPj4+Pj4gCj4+Pj4gRGlzYWJs
aW5nIFpPTkVfRE1BIGlzIHRlbXBvcmFyeSBzb2x1dGlvbi4gIFdlIG1heSBuZWVkIHByb3BlciBz
b2x1dGlvbgo+Pj4gCj4+PiBQZXJoYXBzIHRoZSBSYXNwYmVycnkgcGxhdGZvcm0gY29uZmlndXJh
dGlvbiBkZXBlbmRlbmNpZXMgbmVlZCBzZXBhcmF0ZWQgIGZyb20g4oCcc2VydmVyIGNsYXNz4oCd
IEFybSAgZXF1aXBtZW50ID8gIE9yIGF1dG8tY29uZmlndXJlZCBvbiBib290ID8gIENvbnN1bHQg
YW4gZXhwZXJ0IDstKQo+Pj4gCj4+PiAKPj4+IAo+Pj4+PiBJIHdvdWxkIGxpa2UgdG8gc2VlIENo
ZW7igJlzIGZlYXR1cmUgYWRkZWQgLCBwZXJoYXBzIGFzIEVYUEVSSU1FTlRBTCwgIHNvIHdlIGNh
biBnZXQgc29tZSBjb25maWd1cmF0aW9uIHRlc3RpbmcgZG9uZSBvbiBpdC4gICBJdCBjb3JyZWN0
cyBoYXZpbmcgYSBETUEgem9uZSBpbiBsb3cgbWVtb3J5IHdoaWxlIGNyYXNoLWtlcm5lbCBpcyBh
Ym92ZSA0R0IuICBUaGlzIGhhcyBiZWVuIGdvaW5nIG9uIGZvciBhIHllYXIgbm93Lgo+Pj4+IEkg
d2lsbCBhbHNvIGxpa2UgdGhpcyBwYXRjaCB0byBiZSBhZGRlZCBpbiBMaW51eCBhcyBlYXJseSBh
cyBwb3NzaWJsZS4KPj4+PiAKPj4+PiBJc3N1ZSBtZW50aW9uZWQgYnkgbWUgaGFwcGVucyB3aXRo
IG9yIHdpdGhvdXQgdGhpcyBwYXRjaC4KPj4+PiAKPj4+PiBUaGlzIHBhdGNoLXNldCBjYW4gY29u
c2lkZXIgZml4aW5nIGJlY2F1c2UgaXQgdXNlcyBsb3cgbWVtb3J5IGZvciBETUEKPj4+PiAmIHN3
aW90bGIgb25seS4KPj4+PiBXZSBjYW4gY29uc2lkZXIgcmVzdHJpY3RpbmcgY3Jhc2hrZXJuZWwg
d2l0aGluIHRoZSByZXF1aXJlZCByYW5nZSBsaWtlIGJlbG93Cj4+Pj4gCj4+Pj4gZGlmZiAtLWdp
dCBhL2tlcm5lbC9jcmFzaF9jb3JlLmMgYi9rZXJuZWwvY3Jhc2hfY29yZS5jCj4+Pj4gaW5kZXgg
N2Y5ZTVhNmRjNDhjLi5iZDY3YjkwZDM1YmQgMTAwNjQ0Cj4+Pj4gLS0tIGEva2VybmVsL2NyYXNo
X2NvcmUuYwo+Pj4+ICsrKyBiL2tlcm5lbC9jcmFzaF9jb3JlLmMKPj4+PiBAQCAtMzU0LDcgKzM1
NCw3IEBAIGludCBfX2luaXQgcmVzZXJ2ZV9jcmFzaGtlcm5lbF9sb3codm9pZCkKPj4+PiAgICAg
ICAgICAgICAgICAgICAgICAgcmV0dXJuIDA7Cj4+Pj4gICAgICAgfQo+Pj4+IAo+Pj4+IC0gICAg
ICAgbG93X2Jhc2UgPSBtZW1ibG9ja19maW5kX2luX3JhbmdlKDAsIDFVTEwgPDwgMzIsIGxvd19z
aXplLCBDUkFTSF9BTElHTik7Cj4+Pj4gKyAgICAgICBsb3dfYmFzZSA9IG1lbWJsb2NrX2ZpbmRf
aW5fcmFuZ2UoMCwweGMwMDAwMDAwLCBsb3dfc2l6ZSwgQ1JBU0hfQUxJR04pOwo+Pj4+ICAgICAg
IGlmICghbG93X2Jhc2UpIHsKPj4+PiAgICAgICAgICAgICAgIHByX2VycigiQ2Fubm90IHJlc2Vy
dmUgJWxkTUIgY3Jhc2hrZXJuZWwgbG93IG1lbW9yeSwKPj4+PiBwbGVhc2UgdHJ5IHNtYWxsZXIg
c2l6ZS5cbiIsCj4+Pj4gICAgICAgICAgICAgICAgICAgICAgKHVuc2lnbmVkIGxvbmcpKGxvd19z
aXplID4+IDIwKSk7Cj4+Pj4gCj4+Pj4gCj4+PiAgICBJIHN1c3BlY3QgIDB4YzAwMDAwMDAgIHdv
dWxkIG5lZWQgdG8gYmUgYSBDT05GSUcgaXRlbSAgYW5kIG5vdCBoYXJkLWNvZGVkLgo+Pj4gCj4+
IGlmIHlvdSBjb25zaWRlciB0aGlzIGFzIHZhbGlkIGNoYW5nZSwgIGNhbiB5b3UgcGxlYXNlIGlu
Y29ycG9yYXRlIGFzCj4+IHBhcnQgb2YgeW91ciBwYXRjaC1zZXQuCj4gCj4gQWZ0ZXIgY29tbWl0
IDFhOGUxY2VmNyAoImFybTY0OiB1c2UgYm90aCBaT05FX0RNQSBhbmQgWk9ORV9ETUEzMiIp77yM
dGhlIDAtNEcgbWVtb3J5IGlzIHNwbGl0ZWQKPiB0byBETUEgW21lbSAweDAwMDAwMDAwMDAwMDAw
MDAtMHgwMDAwMDAwMDNmZmZmZmZmXSBhbmQgRE1BMzIgW21lbSAweDAwMDAwMDAwNDAwMDAwMDAt
MHgwMDAwMDAwMGZmZmZmZmZmXSBvbiBhcm02NC4KPiAKPiBGcm9tIHRoZSBhYm92ZSBkaXNjdXNz
aW9uLCBvbiB5b3VyIHBsYXRmb3JtLCB0aGUgbG93IGNyYXNoa2VybmVsIGZhbGwgaW4gRE1BMzIg
cmVnaW9uLCBidXQgeW91ciBlbnZpcm9ubWVudCBuZWVkcyB0byBhY2Nlc3MgRE1BCj4gcmVnaW9u
LCBzbyB0aGVyZSBpcyB0aGUgY2FsbCB0cmFjZS4KPiAKPiBJIGhhdmUgYSBxdWVzdGlvbiwgd2h5
IGRvIHlvdSBjaG9vc2UgMHhjMDAwMDAwMCBoZXJlPwo+IAo+IEJlc2lkZXMsIHRoaXMgaXMgY29t
bW9uIGNvZGUsIHdlIGFsc28gbmVlZCB0byBjb25zaWRlciBhYm91dCB4ODYuCj4gCgogKyBuc2Fl
bnpqdWxpZW5uZUBzdXNlLmRlIAoKICBFeGFjdGx5IC4gIFRoaXMgaXMgd2h5IGl0IG5lZWRzIHRv
IGJlIGEgQ09ORklHIG9wdGlvbiBmb3IgIFJhc3BiZXJyeSAuLiwgIG9yIGRldmljZSB0cmVlIG9w
dGlvbi4gCgoKICBXZSBjb3VsZCByZXZlcnQgMWE4ZTFjZWY3IHNpbmNlIGl0IGJyb2tlICBBcm0g
a2R1bXAgdG9vLgoKCj4gCj4gVGhhbmtzLAo+IENoZW4gWmhvdQo+IAoKCiAKIApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
