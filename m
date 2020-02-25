Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C02616BA75
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 08:17:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hN+qmI/MldFydv33XhpBoel604s9KmbSExiQsKjYFKM=; b=CWxWeABvU7UuOx
	2qtnVq5DLZkBrqi4K9kXvDIKHhabiC29fglb0S/SrD/ttN7x5bDCtOsy7rHLBv23KbN+9kUL4CSzW
	xj3PPv1z9/EqshVJrkJmyfvgXxZp7y/aG7/CDOLfNqDke4Z71H0Z3yAI8/BO8aPncvpu/VLButmoI
	acnLOLq7h5Ma0hUJ2saqYlCySzzoTaEy3usp2SEj46VKlGmkT99qWNNr19S/Y46+H+4G2oMNEB4zB
	d/0z5P0wvB0Gc+t3o/Zm7+JCgLV6J373K10hetTV4sr1JrjxslQr2jiL9LQm8ISk5rZ00487GqjpW
	V0YNqEvgRB3LvO6KLMeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6UT6-0001Mk-Rs; Tue, 25 Feb 2020 07:17:24 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6USw-0001Lx-Gr
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 07:17:16 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200225071711euoutp02c1133a07fccc1f3c7ce1bf0c016568d4~2k-yDhQgL2727627276euoutp022
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 07:17:11 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200225071711euoutp02c1133a07fccc1f3c7ce1bf0c016568d4~2k-yDhQgL2727627276euoutp022
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1582615031;
 bh=Bojt6DKlC7Lzwtf06r54tTUllKU5i9UGy8RX11FRzVo=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=VZLIHq/M5FnARW8q6915EjZfge+z+HlfGk5oEEoKVTC1rrtHkJUCGfGJw9H5VYYhb
 0tq12IoFyHZqTdHB8drjJ00MwA3eNmyWhXbsWTQhIDdO7Xb1+rHD6KwiAUbXlg7RB6
 WAsPEGzKbziHP5muUe0HKfRWp1zbwCm269M8/dpE=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200225071711eucas1p20d9822a03d85955f01a9e074761ed5e0~2k-x1LB4r0695706957eucas1p2b;
 Tue, 25 Feb 2020 07:17:11 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 1B.AD.60698.7F9C45E5; Tue, 25
 Feb 2020 07:17:11 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200225071711eucas1p1c91a3df0b578bdf14cbd1fa3432553d7~2k-xYsL5o0726307263eucas1p1_;
 Tue, 25 Feb 2020 07:17:11 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200225071711eusmtrp237ddec7c479fa631d97ca876dd418432~2k-xX8T7l2759227592eusmtrp2Z;
 Tue, 25 Feb 2020 07:17:11 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-8b-5e54c9f77b62
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 51.79.08375.7F9C45E5; Tue, 25
 Feb 2020 07:17:11 +0000 (GMT)
Received: from [106.120.51.15] (unknown [106.120.51.15]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200225071710eusmtip10f8f9e9df04817865fa3ca3abb9c94d5~2k-wy6VN20421204212eusmtip1k;
 Tue, 25 Feb 2020 07:17:10 +0000 (GMT)
Subject: Re: [PATCH v3] clocksource: Fix arm_arch_timer clockmode when vDSO
 disabled
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <368f9cf7-5d9c-c671-8355-82f0f6e549aa@samsung.com>
Date: Tue, 25 Feb 2020 08:17:09 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200224151552.57274-1-vincenzo.frascino@arm.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01SbUhTYRjl3b3brtbsbho+qBSMCpLSxMirhSaEDSKKin5Is6ZeVHJqu2ra
 jzK/WyZ+DXWKZpim+JGbii6UnORc2kxnJvbFUgKNWWlSmmhuV8t/55znPO9zDrwEJhrguhEx
 cYm0Ik4WK+Y54p0Dy6bDv4yXwo6YtR7Ut7o8ROXqlnBKMz3Bpcy6Sh6lV/UgakTXzKUevx3l
 UN2VRi6l1agwqmdtGadmfwziJ3dImqqakMQ8MYpJNI33eJJ5k4kv0dbekSxq9pznhTqeiKRj
 Y5JphXfgNcdopakPS/jjkjL6+RlKQzqhEjkQQB6FV99HOErkSIjIJwg+dM1tkp8IMi1fN8ki
 gg5jGW9r5eVEB8YO6hHUP0jbJFYE5uelyOZyJi/DwBs9bhu4kCoEpfezkI1gZAmCactDrs3F
 I31AaVXa3xWQgdCUm23XcXI/pC/08m14NymFioZ+nPUIwVg+Y8cOZBC8yNHb/Ri5FzI6KjAW
 u8LUTLU9OJATfCjuqsfZ4KfAtP5lEzvDnKGdz2IPWO/eWshAYDE181mSt1EovQyxruPw3rSy
 EZXYOHEQWnXerBwMKksOxyYD6QSTViEbwgmKOksxVhZAbraIdR8AtaHl39m+12NYARKrt1VT
 b6uj3lZH/f/uQ4Q3Ilc6iZFH0YxvHH3Ti5HJmaS4KK+IeLkGbfyuoTXDUhfqXQ3XI5JA4p0C
 6LkYJuLKkplUuR4BgYldBGfQhTCRIFKWeotWxF9VJMXSjB65E7jYVeD7aFYqIqNkifR1mk6g
 FVtTDuHglob83c/1LfgNtzBZIdPrJQU1vdW1WXWf+BWRuwKGbpNuAeNSoX/6aMJcxmS4zOeG
 tlCRspofGGGomm5QtXkO8/fhuisVfqGZdeXz5sbyYm1r+xT3Y7fknVfQ2KFi6BVak9vG7z5d
 Dz4WsqqLlcqDajLPFjJTg0Wno7L7f+fPL62IcSZa5uOJKRjZX04ZU6NZAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrOIsWRmVeSWpSXmKPExsVy+t/xu7rfT4bEGVzpZrZ4v6yH0aJj11cW
 i02Pr7FaXN41h83i0NS9jBbnd61ltVh6/SKTxc45J1ktNm+aymyx999PFouXH0+wOHB7rJm3
 htHj8rWLzB6bVnWyebw7d47dY/OSeo/Pm+QC2KL0bIryS0tSFTLyi0tslaINLYz0DC0t9IxM
 LPUMjc1jrYxMlfTtbFJSczLLUov07RL0MrrOHWQu+C1ScfHRbsYGxl2CXYycHBICJhKnrm1l
 7mLk4hASWMoo8ftJGwtEQkbi5LQGVghbWOLPtS42iKLXjBKnbnxhBkkIC4RJHLt6CKxBRGAq
 o8SMI5ogRcwCUxglZq7qZ4LomMQosWN9H1gVm4ChRNdbkFGcHLwCdhJrOtrAVrAIqEo0fdrH
 DmKLCsRK3JjZwQRRIyhxcuYTsF5OAXuJo+2HwOqZBcwk5m1+yAxhy0s0b50NZYtL3Hoyn2kC
 o9AsJO2zkLTMQtIyC0nLAkaWVYwiqaXFuem5xYZ6xYm5xaV56XrJ+bmbGIGRuu3Yz807GC9t
 DD7EKMDBqMTDK7E3OE6INbGsuDL3EKMEB7OSCK83Y1CcEG9KYmVValF+fFFpTmrxIUZToOcm
 MkuJJucDk0heSbyhqaG5haWhubG5sZmFkjhvh8DBGCGB9MSS1OzU1ILUIpg+Jg5OqQbGmbfe
 dRwr+r/7m7VuSOrONS9l1sVO1Vg/ST/jt2AX57UPc+uKk/57iYUe9P3Cu9vHf6Lb5stb9x/5
 /2bSu45tOmsfZWSZ7lgyIdCzUI25mS32sNvRCa/8HmS869/SHyLR6HWw+2jIsnifTp6v4fWp
 l7nOWhilGEYcYd/qXXFYt3Yez8Y8pkWblFiKMxINtZiLihMBYLGeC+oCAAA=
X-CMS-MailID: 20200225071711eucas1p1c91a3df0b578bdf14cbd1fa3432553d7
X-Msg-Generator: CA
X-RootMTR: 20200224151611eucas1p2d5e9492e4497edd18a322fdfc33547bf
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200224151611eucas1p2d5e9492e4497edd18a322fdfc33547bf
References: <CGME20200224151611eucas1p2d5e9492e4497edd18a322fdfc33547bf@eucas1p2.samsung.com>
 <20200224151552.57274-1-vincenzo.frascino@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_231714_763877_7DED2095 
X-CRM114-Status: GOOD (  19.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark.Rutland@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 linux@armlinux.org.uk, luto@kernel.org, maz@kernel.org, tglx@linutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAyNC4wMi4yMDIwIDE2OjE1LCBWaW5jZW56byBGcmFzY2lubyB3cm90ZToKPiBUaGUg
YXJtX2FyY2hfdGltZXIgcmVxdWlyZXMgdGhhdCBWRFNPX0NMT0NLTU9ERV9BUkNIVElNRVIgdG8g
YmUKPiBkZWZpbmVkIHRvIGNvbXBpbGUgY29ycmVjdGx5LiBPbiBhcm0gdGhlIHZEU08gY2FuIGJl
IGRpc2FibGVkIGFuZCB3aGVuCj4gdGhpcyBpcyB0aGUgY2FzZSB0aGUgY29tcGlsYXRpb24gZW5k
cyBwcmVtYXR1cmVseSB3aXRoIGFuIGVycm9yOgo+Cj4gICAkIG1ha2UgQVJDSD1hcm0gbXVsdGlf
djdfZGVmY29uZmlnCj4gICAkIC4vc2NyaXB0cy9jb25maWcgLWQgVkRTTwo+ICAgJCBtYWtlCj4K
PiBkcml2ZXJzL2Nsb2Nrc291cmNlL2FybV9hcmNoX3RpbWVyLmM6NzM6NDQ6IGVycm9yOgo+IOKA
mFZEU09fQ0xPQ0tNT0RFX0FSQ0hUSU1FUuKAmSB1bmRlY2xhcmVkIGhlcmUgKG5vdCBpbiBhIGZ1
bmN0aW9uKQo+ICAgIHN0YXRpYyBlbnVtIHZkc29fY2xvY2tfbW9kZSB2ZHNvX2RlZmF1bHQgPSBW
RFNPX0NMT0NLTU9ERV9BUkNIVElNRVI7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIF4KPiBzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjI2NzogcmVjaXBlIGZv
ciB0YXJnZXQKPiAnZHJpdmVycy9jbG9ja3NvdXJjZS9hcm1fYXJjaF90aW1lci5vJyBmYWlsZWQK
PiBtYWtlWzJdOiAqKiogW2RyaXZlcnMvY2xvY2tzb3VyY2UvYXJtX2FyY2hfdGltZXIub10gRXJy
b3IgMQo+IG1ha2VbMl06ICoqKiBXYWl0aW5nIGZvciB1bmZpbmlzaGVkIGpvYnMuLi4uCj4gc2Ny
aXB0cy9NYWtlZmlsZS5idWlsZDo1MDU6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2Nsb2Nr
c291cmNlJyBmYWlsZWQKPiBtYWtlWzFdOiAqKiogW2RyaXZlcnMvY2xvY2tzb3VyY2VdIEVycm9y
IDIKPiBtYWtlWzFdOiAqKiogV2FpdGluZyBmb3IgdW5maW5pc2hlZCBqb2JzLi4uLgo+IE1ha2Vm
aWxlOjE2ODM6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzJyBmYWlsZWQKPiBtYWtlOiAqKiog
W2RyaXZlcnNdIEVycm9yIDIKPgo+IERlZmluZSBWRFNPX0NMT0NLTU9ERV9BUkNIVElNRVIgYXMg
VkRTT19DTE9DS01PREVfTk9ORSB3aGVuIHRoZSB2RFNPcyBhcmUKPiBub3QgZW5hYmxlZCB0byBh
ZGRyZXNzIHRoZSBpc3N1ZS4KPgo+IEZpeGVzOiA1ZTNjNmEzMTJhMDkgKCJBUk0vYXJtNjQ6IHZk
c286IFVzZSBjb21tb24gdmRzbyBjbG9jayBtb2RlIHN0b3JhZ2UiKQo+IENjOiBNYXJjIFp5bmdp
ZXIgPG1hekBrZXJuZWwub3JnPgo+IENjOiBNYXJrIFJ1dGxhbmQgPE1hcmsuUnV0bGFuZEBhcm0u
Y29tPgo+IENjOiBSdXNzZWxsIEtpbmcgPGxpbnV4QGFybWxpbnV4Lm9yZy51az4KPiBDYzogVGhv
bWFzIEdsZWl4bmVyIDx0Z2x4QGxpbnV0cm9uaXguZGU+Cj4gUmVwb3J0ZWQtYnk6IE1hcmVrIFN6
eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBWaW5j
ZW56byBGcmFzY2lubyA8dmluY2Vuem8uZnJhc2Npbm9AYXJtLmNvbT4KClRlc3RlZC1ieTogTWFy
ZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgoKPiAtLS0KPiAgIGRyaXZl
cnMvY2xvY2tzb3VyY2UvYXJtX2FyY2hfdGltZXIuYyB8IDQgKysrKwo+ICAgMSBmaWxlIGNoYW5n
ZWQsIDQgaW5zZXJ0aW9ucygrKQo+Cj4gVGhpcyBwYXRjaCBoYXMgYmVlbiByZWJhc2VkIGFuZCB0
ZXN0ZWQgb24gdGlwL3RpbWVycy9jb3JlLgo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xvY2tz
b3VyY2UvYXJtX2FyY2hfdGltZXIuYyBiL2RyaXZlcnMvY2xvY2tzb3VyY2UvYXJtX2FyY2hfdGlt
ZXIuYwo+IGluZGV4IGVlMjQyMGQ1NmY2Ny4uZDUzZjRjN2NjYWFlIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvY2xvY2tzb3VyY2UvYXJtX2FyY2hfdGltZXIuYwo+ICsrKyBiL2RyaXZlcnMvY2xvY2tz
b3VyY2UvYXJtX2FyY2hfdGltZXIuYwo+IEBAIC02OSw3ICs2OSwxMSBAQCBzdGF0aWMgZW51bSBh
cmNoX3RpbWVyX3BwaV9uciBhcmNoX3RpbWVyX3VzZXNfcHBpID0gQVJDSF9USU1FUl9WSVJUX1BQ
STsKPiAgIHN0YXRpYyBib29sIGFyY2hfdGltZXJfYzNzdG9wOwo+ICAgc3RhdGljIGJvb2wgYXJj
aF90aW1lcl9tZW1fdXNlX3ZpcnR1YWw7Cj4gICBzdGF0aWMgYm9vbCBhcmNoX2NvdW50ZXJfc3Vz
cGVuZF9zdG9wOwo+ICsjaWZkZWYgQ09ORklHX0dFTkVSSUNfR0VUVElNRU9GREFZCj4gICBzdGF0
aWMgZW51bSB2ZHNvX2Nsb2NrX21vZGUgdmRzb19kZWZhdWx0ID0gVkRTT19DTE9DS01PREVfQVJD
SFRJTUVSOwo+ICsjZWxzZQo+ICtzdGF0aWMgZW51bSB2ZHNvX2Nsb2NrX21vZGUgdmRzb19kZWZh
dWx0ID0gVkRTT19DTE9DS01PREVfTk9ORTsKPiArI2VuZGlmIC8qIENPTkZJR19HRU5FUklDX0dF
VFRJTUVPRkRBWSAqLwo+ICAgCj4gICBzdGF0aWMgY3B1bWFza190IGV2dHN0cm1fYXZhaWxhYmxl
ID0gQ1BVX01BU0tfTk9ORTsKPiAgIHN0YXRpYyBib29sIGV2dHN0cm1fZW5hYmxlID0gSVNfRU5B
QkxFRChDT05GSUdfQVJNX0FSQ0hfVElNRVJfRVZUU1RSRUFNKTsKCkJlc3QgcmVnYXJkcwotLSAK
TWFyZWsgU3p5cHJvd3NraSwgUGhEClNhbXN1bmcgUiZEIEluc3RpdHV0ZSBQb2xhbmQKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
