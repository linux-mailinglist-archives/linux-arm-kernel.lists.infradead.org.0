Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E06D7900E6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 13:43:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0wrQla8+jG8jc1BySiUrnSyGdgBresc8s+Y7bTIFrG0=; b=HdEp2iKqRrcEp4afU3/hjOmUz
	hwQ/79M1+BmxaHJd+eFAq6IjYwoHQpaA84tIdga6OxgRk9wgxXBI0c+YIEp2NbJYP/F89Np/UIGdq
	4sck0dnpI2MeA0TswDKKrL92c20wEQsqJ2Wqn5FMlnLNWx1pPS7gElosJQVP08aGlHvV1EwMavu9P
	fFty3kt7V1lF8J+GyjsHSvDB+vKUmmdCu2lR/ggD7ABWnJR0FZirlkc4SOjN8J89aIeP7waUhSKtG
	drNNYRSY22/VeeLd1Db2omTB8vnqWv092q26dJzSR+JM6aBFBslbY0VXZ5+tn187Qr3WX3+OgiFoU
	88vzum/+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyadF-0004fZ-9L; Fri, 16 Aug 2019 11:42:57 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyad2-0004eW-89
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 11:42:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1565955758; x=1568547758;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pSkzGPKxkenyrVL7iwf9WIPGXIN45VKdIwMoSZ1ZEow=;
 b=DizoyXM5jFsjMnhIbuFjSj9BTIqIKYpaazEv96RIZsft9phL4Tmp1JZLjZ9/SNMp
 k4WAELJsWuG43tlfH/CxC+Gs5P4G14pFJmJPGjwTQLdn5NvhOmu6bsoHvpTQQ0pL
 eEU3Pw9vwjNJKZxqREgMcQPf/FOHZKiqvVD1YZZ110M=;
X-AuditID: c39127d2-e1bff70000001af2-3d-5d5696ae28a7
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id D1.6A.06898.EA6965D5;
 Fri, 16 Aug 2019 13:42:38 +0200 (CEST)
Received: from [172.16.23.108] ([172.16.23.108])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019081613423816-80238 ;
 Fri, 16 Aug 2019 13:42:38 +0200 
Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: Add PHYTEC i.MX6 UL/ULL
 devicetree bindings
To: Rob Herring <robh@kernel.org>
References: <1563954573-370205-1-git-send-email-s.riedmueller@phytec.de>
 <20190813160448.GA27548@bogus>
 <073f9466-9dd3-a22c-e000-e9f4c60f90a0@phytec.de>
 <CAL_JsqJHfVDfpC9Yr7o3HO4wU7QR+sp0mxFLkxwVcGXXLeAyJw@mail.gmail.com>
From: =?UTF-8?Q?Stefan_Riedm=c3=bcller?= <s.riedmueller@phytec.de>
Message-ID: <cda26fbd-c683-d285-dc52-825d5e16a9e1@phytec.de>
Date: Fri, 16 Aug 2019 13:42:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqJHfVDfpC9Yr7o3HO4wU7QR+sp0mxFLkxwVcGXXLeAyJw@mail.gmail.com>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 16.08.2019 13:42:38,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 16.08.2019 13:42:38
X-TNEFEvaluated: 1
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupnkeLIzCtJLcpLzFFi42JZI8DApbtuWlisQdN/SYvmDluL+UfOsVo8
 vOpvsenxNVaLrl8rmS0u75rDZnG3pZPVYun1i0wW//fsYLf4u30Ti8WLLeIO3B5r5q1h9Ng5
 6y67x6ZVnWwed67tYfPYvKTeY+O7HUwe/X8NPD5vkgvgiOKySUnNySxLLdK3S+DKaHr7kLlg
 jljFj/ONbA2MTwS7GDk5JARMJG5fncbYxcjFISSwg1GibfEJJgjnNKPEnVWvWUGqhAViJd6t
 ns8CYosIKEr8bpvGClLELHCTWeLVjYUsEB2PGSVWLPnGBlLFJuAksfh8B5jNK2AjMe/qHPYu
 Rg4OFgFViQVrpUHCogIREod3zGKEKBGUODnzCdgCToFAiZUPN7CDzJQQuMIoMbHxOjvErUIS
 pxefZQaxmQXMJOZtfghli0vcejKfCcLWlli28DXzBEahWUjmzkLSMgtJyywkLQsYWVYxCuVm
 JmenFmVm6xVkVJakJuulpG5iBEba4Ynql3Yw9s3xOMTIxMF4iFGCg1lJhHfCxaBYId6UxMqq
 1KL8+KLSnNTiQ4zSHCxK4rwbeEvChATSE0tSs1NTC1KLYLJMHJxSDYx+CleDXolscDXwuFKq
 UTYr29xLafaEU6w9xfO8J9t79XExO/xj9Qr2nsbaeNuJJzf+X5915G6DO457Lb2+r0x0inWa
 LPpFatfEA6k6PWc9td9M3qwl+dr4uZf+Qp0fjBXf3suueS6+/vYs+/n1ixLnTBdeas390XK1
 vXXURsuPQmvW35r8q1yJpTgj0VCLuag4EQBQuJqjogIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_044244_440940_BF301B0A 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [195.145.39.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Andrew Smirnov <andrew.smirnov@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iLAoKT24gMTUuMDguMTkgMTU6NDMsIFJvYiBIZXJyaW5nIHdyb3RlOgo+IE9uIFRodSwg
QXVnIDE1LCAyMDE5IGF0IDQ6NTUgQU0gU3RlZmFuIFJpZWRtw7xsbGVyCj4gPHMucmllZG11ZWxs
ZXJAcGh5dGVjLmRlPiB3cm90ZToKPj4KPj4gSGkgUm9iLAo+Pgo+PiBPbiAxMy4wOC4xOSAxODow
NCwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4+PiBPbiBXZWQsIEp1bCAyNCwgMjAxOSBhdCAwOTo0OToz
MkFNICswMjAwLCBTdGVmYW4gUmllZG11ZWxsZXIgd3JvdGU6Cj4+Pj4gQWRkIGRldmljZXRyZWUg
YmluZGluZ3MgZm9yIGkuTVg2IFVML1VMTCBiYXNlZCBwaHlDT1JFLWkuTVg2IFVML1VMTCBhbmQK
Pj4+PiBwaHlCT0FSRC1TZWdpbi4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IFN0ZWZhbiBSaWVk
bXVlbGxlciA8cy5yaWVkbXVlbGxlckBwaHl0ZWMuZGU+Cj4+Pj4gLS0tCj4+Pj4gICAgRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9mc2wueWFtbCB8IDggKysrKysrKysKPj4+
PiAgICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9mc2wueWFtbCBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vZnNsLnlhbWwKPj4+PiBpbmRleCA3Mjk0
YWMzNmY0YzAuLjQwZjAwNzg1OTA5MiAxMDA2NDQKPj4+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvYXJtL2ZzbC55YW1sCj4+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9mc2wueWFtbAo+Pj4+IEBAIC0xNjEsMTIgKzE2MSwyMCBA
QCBwcm9wZXJ0aWVzOgo+Pj4+ICAgICAgICAgICAgaXRlbXM6Cj4+Pj4gICAgICAgICAgICAgIC0g
ZW51bToKPj4+PiAgICAgICAgICAgICAgICAgIC0gZnNsLGlteDZ1bC0xNHgxNC1ldmsgICAgICAj
IGkuTVg2IFVsdHJhTGl0ZSAxNHgxNCBFVksgQm9hcmQKPj4+PiArICAgICAgICAgICAgICAtIHBo
eXRlYyxpbXg2dWwtcGJhY2QxMCAgICAgIyBQSFlURUMgcGh5Qk9BUkQtU2VnaW4gd2l0aCBpLk1Y
NiBVTAo+Pj4+ICsgICAgICAgICAgICAgIC0gcGh5dGVjLGlteDZ1bC1wYmFjZDEwLWVtbWMgICMg
UEhZVEVDIHBoeUJPQVJELVNlZ2luIGVNTUMgS2l0Cj4+Pj4gKyAgICAgICAgICAgICAgLSBwaHl0
ZWMsaW14NnVsLXBiYWNkMTAtbmFuZCAgIyBQSFlURUMgcGh5Qk9BUkQtU2VnaW4gTkFORCBLaXQK
Pj4+PiArICAgICAgICAgICAgICAtIHBoeXRlYyxpbXg2dWwtcGNsMDYzICAgICAgIyBQSFlURUMg
cGh5Q09SRS1pLk1YIDZVTAo+Pj4KPj4+IFRoaXMgZG9lc24ndCBtYXRjaCB3aGF0IGlzIGluIHRo
ZSBkdHMgZmlsZXM6Cj4+Pgo+Pj4gYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsLXBoeXRlYy1wY2ww
NjMuZHRzaTogICAgY29tcGF0aWJsZSA9ICJwaHl0ZWMsaW14NnVsLXBjbDA2MyIsICJmc2wsaW14
NnVsIjsKPj4+IGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZ1bC1waHl0ZWMtcGh5Ym9hcmQtc2VnaW4t
ZnVsbC5kdHM6ICAgICAgY29tcGF0aWJsZSA9ICJwaHl0ZWMsaW14NnVsLXBiYWNkMTAiLCAicGh5
dGVjLGlteDZ1bC1wY2wwNjMiLAo+Pj4gImZzbCxpbXg2dWwiOwo+Pj4gYXJjaC9hcm0vYm9vdC9k
dHMvaW14NnVsLXBoeXRlYy1waHlib2FyZC1zZWdpbi5kdHNpOiAgICBjb21wYXRpYmxlID0gInBo
eXRlYyxpbXg2dWwtcGJhY2QtMTAiLCAicGh5dGVjLGlteDZ1bC1wY2wwNjMiLAo+Pj4gImZzbCxp
bXg2dWwiOwo+Pgo+PiBTaGF3biBhbHJlYWR5IGFwcGxpZWQgbXkgcGF0Y2hlcyB3aGljaCByZW5h
bWUgdGhlIGNvbXBhdGlibGVzLCBzZWUKPj4gaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkvNy8y
My80Mgo+IAo+IEluIGFueSBjYXNlLCBpdCBzdGlsbCBkb2Vzbid0IG1hdGNoLiBGb3IgZXhhbXBs
ZSwgZnJvbSB0aG9zZSBwYXRjaGVzOgo+IAo+ICsgbW9kZWwgPSAiUEhZVEVDIHBoeUJPQVJELVNl
Z2luIGkuTVg2IFVMTCBGdWxsIEZlYXR1cmVkIHdpdGggZU1NQyI7Cj4gKyBjb21wYXRpYmxlID0g
InBoeXRlYyxpbXg2dWxsLXBiYWNkMTAtZW1tYyIsICJwaHl0ZWMsaW14NnVsbC1wYmFjZDEwIiwK
PiArICAgICAicGh5dGVjLGlteDZ1bGwtcGNsMDYzIiwiZnNsLGlteDZ1bGwiOwo+IAo+IFRoZSBj
b3JyZWN0IHNjaGVtYSBmb3IgdGhpcyB3b3VsZCBiZToKPiAKPiBpdGVtczoKPiAgICAtIGNvbnN0
OiBwaHl0ZWMsaW14NnVsbC1wYmFjZDEwLWVtbWMKPiAgICAtIGNvbnN0OiBwaHl0ZWMsaW14NnVs
bC1wYmFjZDEwCj4gICAgLSBjb25zdDogcGh5dGVjLGlteDZ1bGwtcGNsMDYzCj4gICAgLSBjb25z
dDogZnNsLGlteDZ1bGwKPiAKPiBUaGlzIGRlZmluZXMgaG93IG1hbnkgZW50cmllcyAoNCksIHdo
YXQgdGhleSBhcmUsIGFuZCB0aGUgb3JkZXIgb2YKPiB0aGVtLiBNYXliZSB0aGUgZmlyc3QgZW50
cnkgY2FuIGJlIGFuIGVudW0gd2l0aCB0aGUgLW5hbmQgY29tcGF0aWJsZQo+IGlmIHRob3NlIGFy
ZSAyIG9wdGlvbnMuCj4gCj4gUnVuICdtYWtlIGR0YnNfY2hlY2snIGFuZCBtYWtlIHN1cmUgdGhl
cmUgYXJlbid0IHdhcm5pbmdzIGZvciB0aGUgcm9vdCBub2RlLgoKVGhhbmtzIGZvciB5b3VyIGlu
cHV0LiBJIHdpbGwgdGFrZSBhbm90aGVyIGNsb3NlciBsb29rIGF0IHRoaXMgYW5kIHNlbmQgYSAK
bmV3IHZlcnNpb24uCgpTdGVmYW4KCj4gCj4gUm9iCj4gCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
