Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B14C11465E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 18:56:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nRZYWQyfM4jZ1NMMT2ty5m0znkQgtHcINQ2bYxbYJ98=; b=IiqHQkZPlY8O0I
	uPSh5QaxCc7BMLVNXAxElme5eT1PiEN+ZW3mZhovbYxafDhkwr5H1YBa7L0F0MURzEubHx+xUOpCg
	t1/ZC6p2KV/L7cD33r4QXderdVLE8mAWFlTU8F8hLj9/zY7EQYqmxnGGKpCXiTxCbszMYQ8jkvr48
	j0tcmop2iRF8ZzViC7cLaDfuG2uhBSXpfehZUIvnvAvktQhm1DwcEhQsg27GX6FbegNgz1S+W42EC
	Ni0xD8DJkaVi0dIN+uOJ72sF+Moh0XKMxuOVobmPYc9VPyX3QMLuA6xfBBHLahLHrzJfS3aipv0BP
	Dk1NG00F1FQ/mTrIGQ/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icvMb-0006wj-Kh; Thu, 05 Dec 2019 17:56:29 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icvMM-0006uQ-Js; Thu, 05 Dec 2019 17:56:16 +0000
Received: by mail-qv1-xf44.google.com with SMTP id z3so1639812qvn.0;
 Thu, 05 Dec 2019 09:56:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=uBdc6tAdaDbdHfwIgPMwkMeOlhCvhzqvHxjkUnPKKyc=;
 b=P8s90vb58VmKhLYpki6zTr+33BWbPiCP+lB303nru6CX5sd5JurxgkyzGkwXIrECVv
 18KHZASPN0B1R22YsTE4pKB3VlqFDVUBpLyphe3c6t478HNAzYxUVk35aqVneHwbYUdZ
 ZGPdtmSDiewN/w7fKwkVv6K1N1t7boYmhG1a9zPu045gs8U+9cHCclpimX92uG7/Hhyb
 OCzTLoQhDr59Ju1lPAnbnX0uyht2DiwZE5VK6epFCoVQH0xMGqVOxYhgrvncVTU3itOy
 0NEBOgP7arVX/1DaUxPOz326J2ych72bsv10nsOQ/PMEJD2FuyJyf1x5h4veZvzyw4Zi
 8xrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=uBdc6tAdaDbdHfwIgPMwkMeOlhCvhzqvHxjkUnPKKyc=;
 b=WaWBIto3d/X6JPcNfqzdIUhgOeyp74nQyF857hkUbQvhtCKYctbC8OF8YYwPU9xH/V
 2RBNhnkNyEbsf4Ry+6TGrKf/tlUIhZbN45gTff6Pac1PakJGQ4IyA3WMfT3CVhbswPRo
 4kpwkriqUTTfQVr1qUHy/CwiW5BNIT/WTSXNux04jcymmeQpH+rp4KVBt/CgNdOcmWoi
 6SH2g2tvwJAbon4dxPEPqnfDbp4eu9MulwUt287n2pMgN1k6GO2+EqYxEI/WXytc8R8Q
 PlrilItNAK+vR7/WJqDdA67Dbh3aH8t76/u2S6lS17ROlr2P6iKWVkOi4xSEjYuKtLi5
 O+Dw==
X-Gm-Message-State: APjAAAUn+JHLJN8uPLrWONxxvk+lLnLR3ftYO9LPDXlKE++vwpdRt4GT
 7JPkc5WjFZi1+Ij7gZah0IrDd3Ora1auJwHMIWA=
X-Google-Smtp-Source: APXvYqxsfjMbJimky0Slu9Gm3PSpPimUV4lVFsuPZgK0g7ak4i7DrFu1uUqJtDVrwoypiJmR+0thY9zswvWPt9f96zk=
X-Received: by 2002:a0c:e4cc:: with SMTP id g12mr8781528qvm.237.1575568572639; 
 Thu, 05 Dec 2019 09:56:12 -0800 (PST)
MIME-Version: 1.0
References: <20191028163256.8004-1-robh@kernel.org>
 <20191028163256.8004-11-robh@kernel.org>
In-Reply-To: <20191028163256.8004-11-robh@kernel.org>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Thu, 5 Dec 2019 18:56:01 +0100
Message-ID: <CAFqH_51-BMWSGGBpoKxA3UK+yPHSpPgok5i=daSC0KS5oc5ueA@mail.gmail.com>
Subject: Re: [PATCH v3 10/25] PCI: rockchip: Use
 pci_parse_request_of_pci_ranges()
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_095614_678156_D2C34A89 
X-CRM114-Status: GOOD (  21.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (eballetbo[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, Ryder Lee <ryder.lee@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Michal Simek <michal.simek@xilinx.com>, Christoph Hellwig <hch@infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Simon Horman <horms@verge.net.au>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Ley Foon Tan <lftan@altera.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Scott Branden <sbranden@broadcom.com>, Jingoo Han <jingoohan1@gmail.com>,
 rfi@lists.rocketboards.org, linux-renesas-soc@vger.kernel.org,
 Tom Joseph <tjoseph@cadence.com>, Srinath Mannam <srinath.mannam@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Andrew Murray <andrew.murray@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iLAoKTWlzc2F0Z2UgZGUgUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4gZGVsIGRp
YSBkbC4sIDI4IGTigJlvY3QuIDIwMTkKYSBsZXMgMTc6Mzg6Cj4KPiBDb252ZXJ0IHRoZSBSb2Nr
Y2hpcCBob3N0IGJyaWRnZSB0byB1c2UgdGhlIGNvbW1vbgo+IHBjaV9wYXJzZV9yZXF1ZXN0X29m
X3BjaV9yYW5nZXMoKS4KPgo+IFRoZXJlJ3Mgbm8gbmVlZCB0byBhc3NpZ24gdGhlIHJlc291cmNl
cyB0byBhIHRlbXBvcmFyeSBsaXN0IGZpcnN0LiBKdXN0Cj4gdXNlIGJyaWRnZS0+d2luZG93cyBk
aXJlY3RseSBhbmQgcmVtb3ZlIGFsbCB0aGUgdGVtcG9yYXJ5IGxpc3QgaGFuZGxpbmcuCj4KPiBD
YzogU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cj4gQ2M6IExvcmVuem8gUGll
cmFsaXNpIDxsb3JlbnpvLnBpZXJhbGlzaUBhcm0uY29tPgo+IENjOiBBbmRyZXcgTXVycmF5IDxh
bmRyZXcubXVycmF5QGFybS5jb20+Cj4gQ2M6IEJqb3JuIEhlbGdhYXMgPGJoZWxnYWFzQGdvb2ds
ZS5jb20+Cj4gQ2M6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4gQ2M6IGxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBSb2IgSGVycmlu
ZyA8cm9iaEBrZXJuZWwub3JnPgo+IC0tLQoKSSBqdXN0IHRlc3RlZCBtYWlubGluZSBvbiBteSBT
YW1zdW5nIENocm9tZWJvb2sgUGx1cywgYW5kIHNpbmNlCnllc3RlcmRheSBJJ20gZ2V0dGluZyBh
ICJzeW5jaHJvbm91cyBleHRlcm5hbCBhYm9ydCIgWzFdLiBBZnRlciBhCmJpc2VjdGlvbiwgSSBm
b3VuZCB0aGF0IHRoaXMgcGF0Y2ggdHJpZ2dlcnMgdGhlIGlzc3VlICh0aGlzIHBhdGNoIHdhcwpt
ZXJnZWQgeWVzdGVyZGF5KQoKSSBkaWRuJ3QgbG9vayBpbiBkZXRhaWwgeWV0LCBidXQgaWYgeW91
IGhhdmUgYW55IGlkZWEgb2Ygd2hhdCBjb3VsZCBiZQp0aGUgcHJvYmxlbSwgdGhhdCB3b3VsZCBi
ZSBncmVhdC4KClRoYW5rcywKIEVucmljCgpbMV0gaHR0cHM6Ly9oYXN0ZWJpbi5jb20vYWRhc2Vn
aWhpdy5yYgoKPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWhvc3QuYyB8
IDM2ICsrKystLS0tLS0tLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25z
KCspLCAyOSBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9s
bGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJv
Y2tjaGlwLWhvc3QuYwo+IGluZGV4IGVmOGU2NzdjZTlkMS4uOGQyZTZmMmUxNDFlIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1ob3N0LmMKPiArKysg
Yi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5jCj4gQEAgLTk1MCwx
NCArOTUwLDEwIEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9wcm9iZShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2KQo+ICAgICAgICAgc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRl
djsKPiAgICAgICAgIHN0cnVjdCBwY2lfYnVzICpidXMsICpjaGlsZDsKPiAgICAgICAgIHN0cnVj
dCBwY2lfaG9zdF9icmlkZ2UgKmJyaWRnZTsKPiArICAgICAgIHN0cnVjdCByZXNvdXJjZSAqYnVz
X3JlczsKPiAgICAgICAgIHN0cnVjdCByZXNvdXJjZV9lbnRyeSAqd2luOwo+IC0gICAgICAgcmVz
b3VyY2Vfc2l6ZV90IGlvX2Jhc2U7Cj4gLSAgICAgICBzdHJ1Y3QgcmVzb3VyY2UgKm1lbTsKPiAt
ICAgICAgIHN0cnVjdCByZXNvdXJjZSAqaW87Cj4gICAgICAgICBpbnQgZXJyOwo+Cj4gLSAgICAg
ICBMSVNUX0hFQUQocmVzKTsKPiAtCj4gICAgICAgICBpZiAoIWRldi0+b2Zfbm9kZSkKPiAgICAg
ICAgICAgICAgICAgcmV0dXJuIC1FTk9ERVY7Cj4KPiBAQCAtOTk1LDI5ICs5OTEsMjAgQEAgc3Rh
dGljIGludCByb2NrY2hpcF9wY2llX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYp
Cj4gICAgICAgICBpZiAoZXJyIDwgMCkKPiAgICAgICAgICAgICAgICAgZ290byBlcnJfZGVpbml0
X3BvcnQ7Cj4KPiAtICAgICAgIGVyciA9IGRldm1fb2ZfcGNpX2dldF9ob3N0X2JyaWRnZV9yZXNv
dXJjZXMoZGV2LCAwLCAweGZmLAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAmcmVzLCAmaW9fYmFzZSk7Cj4gKyAgICAgICBlcnIgPSBwY2lfcGFy
c2VfcmVxdWVzdF9vZl9wY2lfcmFuZ2VzKGRldiwgJmJyaWRnZS0+d2luZG93cywgJmJ1c19yZXMp
Owo+ICAgICAgICAgaWYgKGVycikKPiAgICAgICAgICAgICAgICAgZ290byBlcnJfcmVtb3ZlX2ly
cV9kb21haW47Cj4KPiAtICAgICAgIGVyciA9IGRldm1fcmVxdWVzdF9wY2lfYnVzX3Jlc291cmNl
cyhkZXYsICZyZXMpOwo+IC0gICAgICAgaWYgKGVycikKPiAtICAgICAgICAgICAgICAgZ290byBl
cnJfZnJlZV9yZXM7Cj4gKyAgICAgICByb2NrY2hpcC0+cm9vdF9idXNfbnIgPSBidXNfcmVzLT5z
dGFydDsKPgo+ICAgICAgICAgLyogR2V0IHRoZSBJL08gYW5kIG1lbW9yeSByYW5nZXMgZnJvbSBE
VCAqLwo+IC0gICAgICAgcmVzb3VyY2VfbGlzdF9mb3JfZWFjaF9lbnRyeSh3aW4sICZyZXMpIHsK
PiArICAgICAgIHJlc291cmNlX2xpc3RfZm9yX2VhY2hfZW50cnkod2luLCAmYnJpZGdlLT53aW5k
b3dzKSB7Cj4gICAgICAgICAgICAgICAgIHN3aXRjaCAocmVzb3VyY2VfdHlwZSh3aW4tPnJlcykp
IHsKPiAgICAgICAgICAgICAgICAgY2FzZSBJT1JFU09VUkNFX0lPOgo+ICAgICAgICAgICAgICAg
ICAgICAgICAgIGlvID0gd2luLT5yZXM7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgaW8tPm5h
bWUgPSAiSS9PIjsKPiAgICAgICAgICAgICAgICAgICAgICAgICByb2NrY2hpcC0+aW9fc2l6ZSA9
IHJlc291cmNlX3NpemUoaW8pOwo+ICAgICAgICAgICAgICAgICAgICAgICAgIHJvY2tjaGlwLT5p
b19idXNfYWRkciA9IGlvLT5zdGFydCAtIHdpbi0+b2Zmc2V0Owo+IC0gICAgICAgICAgICAgICAg
ICAgICAgIGVyciA9IHBjaV9yZW1hcF9pb3NwYWNlKGlvLCBpb19iYXNlKTsKPiAtICAgICAgICAg
ICAgICAgICAgICAgICBpZiAoZXJyKSB7Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBkZXZfd2FybihkZXYsICJlcnJvciAlZDogZmFpbGVkIHRvIG1hcCByZXNvdXJjZSAlcFJcbiIs
Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBlcnIsIGlvKTsKPiAt
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+IC0gICAgICAgICAgICAg
ICAgICAgICAgIH0KPiAgICAgICAgICAgICAgICAgICAgICAgICByb2NrY2hpcC0+aW8gPSBpbzsK
PiAgICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPiAgICAgICAgICAgICAgICAgY2FzZSBJ
T1JFU09VUkNFX01FTToKPiBAQCAtMTAyNiw5ICsxMDEzLDYgQEAgc3RhdGljIGludCByb2NrY2hp
cF9wY2llX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAgICAgICAgICAg
ICAgICAgICAgICAgcm9ja2NoaXAtPm1lbV9zaXplID0gcmVzb3VyY2Vfc2l6ZShtZW0pOwo+ICAg
ICAgICAgICAgICAgICAgICAgICAgIHJvY2tjaGlwLT5tZW1fYnVzX2FkZHIgPSBtZW0tPnN0YXJ0
IC0gd2luLT5vZmZzZXQ7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gLSAgICAg
ICAgICAgICAgIGNhc2UgSU9SRVNPVVJDRV9CVVM6Cj4gLSAgICAgICAgICAgICAgICAgICAgICAg
cm9ja2NoaXAtPnJvb3RfYnVzX25yID0gd2luLT5yZXMtPnN0YXJ0Owo+IC0gICAgICAgICAgICAg
ICAgICAgICAgIGJyZWFrOwo+ICAgICAgICAgICAgICAgICBkZWZhdWx0Ogo+ICAgICAgICAgICAg
ICAgICAgICAgICAgIGNvbnRpbnVlOwo+ICAgICAgICAgICAgICAgICB9Cj4gQEAgLTEwMzYsMTUg
KzEwMjAsMTQgQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX3Byb2JlKHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2UgKnBkZXYpCj4KPiAgICAgICAgIGVyciA9IHJvY2tjaGlwX3BjaWVfY2ZnX2F0dShy
b2NrY2hpcCk7Cj4gICAgICAgICBpZiAoZXJyKQo+IC0gICAgICAgICAgICAgICBnb3RvIGVycl91
bm1hcF9pb3NwYWNlOwo+ICsgICAgICAgICAgICAgICBnb3RvIGVycl9yZW1vdmVfaXJxX2RvbWFp
bjsKPgo+ICAgICAgICAgcm9ja2NoaXAtPm1zZ19yZWdpb24gPSBkZXZtX2lvcmVtYXAoZGV2LCBy
b2NrY2hpcC0+bXNnX2J1c19hZGRyLCBTWl8xTSk7Cj4gICAgICAgICBpZiAoIXJvY2tjaGlwLT5t
c2dfcmVnaW9uKSB7Cj4gICAgICAgICAgICAgICAgIGVyciA9IC1FTk9NRU07Cj4gLSAgICAgICAg
ICAgICAgIGdvdG8gZXJyX3VubWFwX2lvc3BhY2U7Cj4gKyAgICAgICAgICAgICAgIGdvdG8gZXJy
X3JlbW92ZV9pcnFfZG9tYWluOwo+ICAgICAgICAgfQo+Cj4gLSAgICAgICBsaXN0X3NwbGljZV9p
bml0KCZyZXMsICZicmlkZ2UtPndpbmRvd3MpOwo+ICAgICAgICAgYnJpZGdlLT5kZXYucGFyZW50
ID0gZGV2Owo+ICAgICAgICAgYnJpZGdlLT5zeXNkYXRhID0gcm9ja2NoaXA7Cj4gICAgICAgICBi
cmlkZ2UtPmJ1c25yID0gMDsKPiBAQCAtMTA1NCw3ICsxMDM3LDcgQEAgc3RhdGljIGludCByb2Nr
Y2hpcF9wY2llX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4KPiAgICAgICAg
IGVyciA9IHBjaV9zY2FuX3Jvb3RfYnVzX2JyaWRnZShicmlkZ2UpOwo+ICAgICAgICAgaWYgKGVy
ciA8IDApCj4gLSAgICAgICAgICAgICAgIGdvdG8gZXJyX3VubWFwX2lvc3BhY2U7Cj4gKyAgICAg
ICAgICAgICAgIGdvdG8gZXJyX3JlbW92ZV9pcnFfZG9tYWluOwo+Cj4gICAgICAgICBidXMgPSBi
cmlkZ2UtPmJ1czsKPgo+IEBAIC0xMDY4LDEwICsxMDUxLDYgQEAgc3RhdGljIGludCByb2NrY2hp
cF9wY2llX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAgICAgICBwY2lf
YnVzX2FkZF9kZXZpY2VzKGJ1cyk7Cj4gICAgICAgICByZXR1cm4gMDsKPgo+IC1lcnJfdW5tYXBf
aW9zcGFjZToKPiAtICAgICAgIHBjaV91bm1hcF9pb3NwYWNlKHJvY2tjaGlwLT5pbyk7Cj4gLWVy
cl9mcmVlX3JlczoKPiAtICAgICAgIHBjaV9mcmVlX3Jlc291cmNlX2xpc3QoJnJlcyk7Cj4gIGVy
cl9yZW1vdmVfaXJxX2RvbWFpbjoKPiAgICAgICAgIGlycV9kb21haW5fcmVtb3ZlKHJvY2tjaGlw
LT5pcnFfZG9tYWluKTsKPiAgZXJyX2RlaW5pdF9wb3J0Ogo+IEBAIC0xMDk3LDcgKzEwNzYsNiBA
QCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpCj4KPiAgICAgICAgIHBjaV9zdG9wX3Jvb3RfYnVzKHJvY2tjaGlwLT5yb290X2J1cyk7
Cj4gICAgICAgICBwY2lfcmVtb3ZlX3Jvb3RfYnVzKHJvY2tjaGlwLT5yb290X2J1cyk7Cj4gLSAg
ICAgICBwY2lfdW5tYXBfaW9zcGFjZShyb2NrY2hpcC0+aW8pOwo+ICAgICAgICAgaXJxX2RvbWFp
bl9yZW1vdmUocm9ja2NoaXAtPmlycV9kb21haW4pOwo+Cj4gICAgICAgICByb2NrY2hpcF9wY2ll
X2RlaW5pdF9waHlzKHJvY2tjaGlwKTsKPiAtLQo+IDIuMjAuMQo+Cj4KPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IExpbnV4LW1lZGlhdGVrIG1haWxp
bmcgbGlzdAo+IExpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
