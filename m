Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90053B4AF7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 11:41:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bCRoxK0Kf/XKRqoXIWdgiTaJSJ7Bc9uPQvn+v/0t0gA=; b=kdIvdROiiI5r74
	2A0W1HXPjtOssdklqZcUPkvCfvLh2BKPuNAURDs0+GmaYY6ZRcX7fp5gv6Rei0Ee5PNou0DJ6jOV4
	CNhILzGl82EdGv5cm68N4tPCTD0s8n82KDvEGexu0gyTZZgiNNOYiJLa1kxfuX2oSn9OGGiPrjR02
	mAQT3zRMvhd2EbNbpQHP1bxduJ2zzzviHctDgnQ/boZy7Pq8/ZcZe6osq5KvINyeWaMsThTdFFL1W
	4vkf5jSMG64cmBWLfUn3tRYW6icCbp9liRkt5xGz+6aKhP0SSSy16ZrxLwx5nCTd+xf9fGeVeK7xb
	NQNy9cXTdugq1wzlFfew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA9yz-0006qi-Sk; Tue, 17 Sep 2019 09:41:13 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA9yR-0006pG-0H; Tue, 17 Sep 2019 09:40:40 +0000
Received: by mail-oi1-f194.google.com with SMTP id 83so777333oii.1;
 Tue, 17 Sep 2019 02:40:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=uCmhvMwVcStuHY/v3SQn/MtQSiOlz7f/42X793jLSYQ=;
 b=iG7EglW46DfPUdOdl+YdOWNZCGF28fEaUv4HawSH7LJF5UPWOnRkQkppxbECziggge
 lkhTEJYf/u9A4g0B85zemCgVP2miu4w5zcC6US3Z8QbNoLvLViUCDgUybkYFq6tA62lG
 59+ryOh2op1DI9IKIzXzig21DFADodMPSSz+30fk5W3FJAfHa6bHlaIXEazXP7+6gD5t
 ouiDoDLZ5QyEOrbPRxoQSWZ3zvUrG4Mj5fzWGO2y2XTLNN3Hut6ARBM+3ky7A28xyCy6
 l+Xq56hTVfPfZ9Ws2QJvYGjVlWsPLp/xDln8l18dEnonGkkufQkh6qIpLPk8mT+ABrwz
 RzYg==
X-Gm-Message-State: APjAAAUY3PZUO5WpEwd7wSSKoKurFbkrEmOSK5sYoyvfIswqqwX/vgJL
 svZsUTO7UkksltM04K5Z6MJkd9IJQpDZ7U3J7fE=
X-Google-Smtp-Source: APXvYqy9QAOEl+I70QDj9XZms1oF+JXpX7r5yoYeHsSGg7Usn7nSuv+ezrLNvK9aaeHKMGjyGfXMvQQYURv3Ven7TAk=
X-Received: by 2002:aca:cdc7:: with SMTP id d190mr2793514oig.148.1568713237546; 
 Tue, 17 Sep 2019 02:40:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190824132846.8589-1-u.kleine-koenig@pengutronix.de>
 <20190824132846.8589-2-u.kleine-koenig@pengutronix.de>
 <20190913215809.GA11833@bogus>
In-Reply-To: <20190913215809.GA11833@bogus>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 17 Sep 2019 11:40:25 +0200
Message-ID: <CAMuHMdV+pwoAA0zH_vQf2nKqzrgHP8rcMStyJbnuu2qviFC_qg@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] of: Let of_for_each_phandle fallback to
 non-negative cell_count
To: Rob Herring <robh@kernel.org>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_024039_049433_9A51B89B 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 Joerg Roedel <joro@8bytes.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 linux-mediatek@lists.infradead.org, Linux I2C <linux-i2c@vger.kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iLCBVd2UsCgpPbiBGcmksIFNlcCAxMywgMjAxOSBhdCAxMTo1OCBQTSBSb2IgSGVycmlu
ZyA8cm9iaEBrZXJuZWwub3JnPiB3cm90ZToKPiBPbiBTYXQsIDI0IEF1ZyAyMDE5IDE1OjI4OjQ2
ICswMjAwLCA9P1VURi04P3E/VXdlPTIwS2xlaW5lLUs9QzM9QjZuaWc/PSAgICAgICAgICB3cm90
ZToKPiA+IFJlZmVyZW5jaW5nIGRldmljZSB0cmVlIG5vZGVzIGZyb20gYSBwcm9wZXJ0eSBhbGxv
d3MgdG8gcGFzcyBhcmd1bWVudHMuCj4gPiBUaGlzIGlzIGZvciBleGFtcGxlIHVzZWQgZm9yIHJl
ZmVyZW5jaW5nIGdwaW9zLiBUaGlzIGxvb2tzIGFzIGZvbGxvd3M6Cj4gPgo+ID4gICAgICAgZ3Bp
b19jdHJsOiBncGlvLWNvbnRyb2xsZXIgewo+ID4gICAgICAgICAgICAgICAjZ3Bpby1jZWxscyA9
IDwyPgo+ID4gICAgICAgICAgICAgICAuLi4KPiA+ICAgICAgIH0KPiA+Cj4gPiAgICAgICBzb21l
b3RoZXJub2RlIHsKPiA+ICAgICAgICAgICAgICAgZ3Bpb3MgPSA8JmdwaW9fY3RybCA1IDAgJmdw
aW9fY3RybCAzIDA+Owo+ID4gICAgICAgICAgICAgICAuLi4KPiA+ICAgICAgIH0KPiA+Cj4gPiBU
byBrbm93IHRoZSBudW1iZXIgb2YgYXJndW1lbnRzIHRoaXMgbXVzdCBiZSBlaXRoZXIgZml4ZWQs
IG9yIHRoZQo+ID4gcmVmZXJlbmNlZCBub2RlIGlzIGNoZWNrZWQgZm9yIGEgJGNlbGxzX25hbWUg
KGhlcmU6ICIjZ3Bpby1jZWxscyIpCj4gPiBwcm9wZXJ0eSBhbmQgd2l0aCB0aGlzIGluZm9ybWF0
aW9uIHRoZSBzdGFydCBvZiB0aGUgc2Vjb25kIHJlZmVyZW5jZSBjYW4KPiA+IGJlIGRldGVybWlu
ZWQuCj4gPgo+ID4gQ3VycmVudGx5IHJlZ3VsYXRvcnMgYXJlIHJlZmVyZW5jZWQgd2l0aCBubyBh
ZGRpdGlvbmFsIGFyZ3VtZW50cy4gVG8KPiA+IGFsbG93IHNvbWUgb3B0aW9uYWwgYXJndW1lbnRz
IHdpdGhvdXQgaGF2aW5nIHRvIGNoYW5nZSBhbGwgcmVmZXJlbmNlZAo+ID4gbm9kZXMgdGhpcyBj
aGFuZ2UgaW50cm9kdWNlcyBhIHdheSB0byBzcGVjaWZ5IGEgZGVmYXVsdCBjZWxsX2NvdW50LiBT
bwo+ID4gd2hlbiBhIHBoYW5kbGUgaXMgcGFyc2VkIHdlIGNoZWNrIGZvciB0aGUgJGNlbGxzX25h
bWUgcHJvcGVydHkgYW5kIHVzZQo+ID4gaXQgYXMgYmVmb3JlIGlmIHByZXNlbnQuIElmIGl0IGlz
IG5vdCBwcmVzZW50IHdlIGZhbGwgYmFjayB0bwo+ID4gY2VsbHNfY291bnQgaWYgbm9uLW5lZ2F0
aXZlIGFuZCBvbmx5IGZhaWwgaWYgY2VsbHNfY291bnQgaXMgc21hbGxlciB0aGFuCj4gPiB6ZXJv
Lgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2Vu
aWdAcGVuZ3V0cm9uaXguZGU+CgpUaGlzIGlzIG5vdyBjb21taXQgZTQyZWU2MTAxN2Y1OGNkOSAo
Im9mOiBMZXQgb2ZfZm9yX2VhY2hfcGhhbmRsZSBmYWxsYmFjawp0byBub24tbmVnYXRpdmUgY2Vs
bF9jb3VudCIpIGluIHJvYmgvZm9yLW5leHQsIHdoaWNoIGNhdXNlcyBhIGxvY2stdXAgd2hlbgpi
b290aW5nIGEgc2htb2JpbGVfZGVmY29uZmlnIGtlcm5lbCBvbiByOGE3NzkxL2tvZWxzY2g6Cgpy
Y3U6IElORk86IHJjdV9zY2hlZCBzZWxmLWRldGVjdGVkIHN0YWxsIG9uIENQVQpyY3U6ICAgICAw
LS4uLi46ICgyMDk5IHRpY2tzIHRoaXMgR1ApIGlkbGU9NmZlLzEvMHg0MDAwMDAwMgpzb2Z0aXJx
PTI5LzI5IGZxcz0xMDUwCiAodD0yMTAwIGppZmZpZXMgZz0tMTEzMSBxPTApCk5NSSBiYWNrdHJh
Y2UgZm9yIGNwdSAwCkNQVTogMCBQSUQ6IDEgQ29tbTogc3dhcHBlci8wIE5vdCB0YWludGVkCjUu
My4wLXJjMi1zaG1vYmlsZS0wMDA1MC1nZTQyZWU2MTAxN2Y1OGNkOSAjMzc2CkhhcmR3YXJlIG5h
bWU6IEdlbmVyaWMgUi1DYXIgR2VuMiAoRmxhdHRlbmVkIERldmljZSBUcmVlKQpbPGMwMTBmOGFj
Pl0gKHVud2luZF9iYWNrdHJhY2UpIGZyb20gWzxjMDEwYjYyMD5dIChzaG93X3N0YWNrKzB4MTAv
MHgxNCkKWzxjMDEwYjYyMD5dIChzaG93X3N0YWNrKSBmcm9tIFs8YzA3M2QwMzg+XSAoZHVtcF9z
dGFjaysweDdjLzB4OWMpCls8YzA3M2QwMzg+XSAoZHVtcF9zdGFjaykgZnJvbSBbPGMwNzQyZTgw
Pl0gKG5taV9jcHVfYmFja3RyYWNlKzB4YTAvMHhiOCkKWzxjMDc0MmU4MD5dIChubWlfY3B1X2Jh
Y2t0cmFjZSkgZnJvbSBbPGMwNzQyZjFjPl0KKG5taV90cmlnZ2VyX2NwdW1hc2tfYmFja3RyYWNl
KzB4ODQvMHgxMTQpCls8YzA3NDJmMWM+XSAobm1pX3RyaWdnZXJfY3B1bWFza19iYWNrdHJhY2Up
IGZyb20gWzxjMDE3ZDY4ND5dCihyY3VfZHVtcF9jcHVfc3RhY2tzKzB4YWMvMHhjOCkKWzxjMDE3
ZDY4ND5dIChyY3VfZHVtcF9jcHVfc3RhY2tzKSBmcm9tIFs8YzAxN2E1OTg+XQoocmN1X3NjaGVk
X2Nsb2NrX2lycSsweDJhYy8weDZiNCkKWzxjMDE3YTU5OD5dIChyY3Vfc2NoZWRfY2xvY2tfaXJx
KSBmcm9tIFs8YzAxODM5ODA+XQoodXBkYXRlX3Byb2Nlc3NfdGltZXMrMHgzMC8weDVjKQpbPGMw
MTgzOTgwPl0gKHVwZGF0ZV9wcm9jZXNzX3RpbWVzKSBmcm9tIFs8YzAxOTQxYTg+XQoodGlja19u
b2h6X2hhbmRsZXIrMHhjYy8weDEyMCkKWzxjMDE5NDFhOD5dICh0aWNrX25vaHpfaGFuZGxlcikg
ZnJvbSBbPGMwNWIxZDQwPl0KKGFyY2hfdGltZXJfaGFuZGxlcl92aXJ0KzB4MjgvMHgzMCkKWzxj
MDViMWQ0MD5dIChhcmNoX3RpbWVyX2hhbmRsZXJfdmlydCkgZnJvbSBbPGMwMTZjOWUwPl0KKGhh
bmRsZV9wZXJjcHVfZGV2aWRfaXJxKzB4ZTgvMHgyMWMpCls8YzAxNmM5ZTA+XSAoaGFuZGxlX3Bl
cmNwdV9kZXZpZF9pcnEpIGZyb20gWzxjMDE2N2E4Yz5dCihnZW5lcmljX2hhbmRsZV9pcnErMHgx
OC8weDI4KQpbPGMwMTY3YThjPl0gKGdlbmVyaWNfaGFuZGxlX2lycSkgZnJvbSBbPGMwMTY3YjNj
Pl0KKF9faGFuZGxlX2RvbWFpbl9pcnErMHhhMC8weGI0KQpbPGMwMTY3YjNjPl0gKF9faGFuZGxl
X2RvbWFpbl9pcnEpIGZyb20gWzxjMDM2NzNlYz5dIChnaWNfaGFuZGxlX2lycSsweDU4LzB4OTAp
Cls8YzAzNjczZWM+XSAoZ2ljX2hhbmRsZV9pcnEpIGZyb20gWzxjMDEwMWE4Yz5dIChfX2lycV9z
dmMrMHg2Yy8weDkwKQpFeGNlcHRpb24gc3RhY2soMHhlYjA4ZGQzMCB0byAweGViMDhkZDc4KQpk
ZDIwOiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjMGNjNzUxNCAyMDAwMDAx
MyAwMDAwMDAwNSAwMDAwM2IyNwpkZDQwOiBlYjdjNDAyMCBjMGNjNzUwYyAwMDAwMDA1MSAwMDAw
MDA1MSAyMDAwMDAxMyBjMGM2NmIwOCBlYjFjZGMwMCAwMDAwMDAxOApkZDYwOiAwMDAwMDAwMCBl
YjA4ZGQ4MCBjMDVjMWEzOCBjMDc1NmMwMCAyMDAwMDAxMyBmZmZmZmZmZgpbPGMwMTAxYThjPl0g
KF9faXJxX3N2YykgZnJvbSBbPGMwNzU2YzAwPl0KKF9yYXdfc3Bpbl91bmxvY2tfaXJxcmVzdG9y
ZSsweDFjLzB4MjApCls8YzA3NTZjMDA+XSAoX3Jhd19zcGluX3VubG9ja19pcnFyZXN0b3JlKSBm
cm9tIFs8YzA1YzFhMzg+XQoob2ZfZmluZF9ub2RlX2J5X3BoYW5kbGUrMHhjYy8weGYwKQpbPGMw
NWMxYTM4Pl0gKG9mX2ZpbmRfbm9kZV9ieV9waGFuZGxlKSBmcm9tIFs8YzA1YzFiYjg+XQoob2Zf
cGhhbmRsZV9pdGVyYXRvcl9uZXh0KzB4NjgvMHgxNzgpCls8YzA1YzFiYjg+XSAob2ZfcGhhbmRs
ZV9pdGVyYXRvcl9uZXh0KSBmcm9tIFs8YzA1YzIyYmM+XQoob2ZfY291bnRfcGhhbmRsZV93aXRo
X2FyZ3MrMHg1Yy8weDdjKQpbPGMwNWMyMmJjPl0gKG9mX2NvdW50X3BoYW5kbGVfd2l0aF9hcmdz
KSBmcm9tIFs8YzA1M2ZjMzg+XQooaTJjX2RlbXV4X3BpbmN0cmxfcHJvYmUrMHgyNC8weDFmYykK
WzxjMDUzZmMzOD5dIChpMmNfZGVtdXhfcGluY3RybF9wcm9iZSkgZnJvbSBbPGMwNDQ2M2M0Pl0K
KHBsYXRmb3JtX2Rydl9wcm9iZSsweDQ4LzB4OTQpCls8YzA0NDYzYzQ+XSAocGxhdGZvcm1fZHJ2
X3Byb2JlKSBmcm9tIFs8YzA0NDRhMjA+XSAocmVhbGx5X3Byb2JlKzB4MWYwLzB4MmI4KQpbPGMw
NDQ0YTIwPl0gKHJlYWxseV9wcm9iZSkgZnJvbSBbPGMwNDQ0ZTY4Pl0gKGRyaXZlcl9wcm9iZV9k
ZXZpY2UrMHgxNDAvMHgxNTgpCls8YzA0NDRlNjg+XSAoZHJpdmVyX3Byb2JlX2RldmljZSkgZnJv
bSBbPGMwNDQ0ZmYwPl0KKGRldmljZV9kcml2ZXJfYXR0YWNoKzB4NDQvMHg1YykKWzxjMDQ0NGZm
MD5dIChkZXZpY2VfZHJpdmVyX2F0dGFjaCkgZnJvbSBbPGMwNDQ1MGI0Pl0KKF9fZHJpdmVyX2F0
dGFjaCsweGFjLzB4YjQpCls8YzA0NDUwYjQ+XSAoX19kcml2ZXJfYXR0YWNoKSBmcm9tIFs8YzA0
NDMxNzg+XSAoYnVzX2Zvcl9lYWNoX2RldisweDY0LzB4YTApCls8YzA0NDMxNzg+XSAoYnVzX2Zv
cl9lYWNoX2RldikgZnJvbSBbPGMwNDQzOGE4Pl0gKGJ1c19hZGRfZHJpdmVyKzB4MTQ4LzB4MWE4
KQpbPGMwNDQzOGE4Pl0gKGJ1c19hZGRfZHJpdmVyKSBmcm9tIFs8YzA0NDVhZDA+XSAoZHJpdmVy
X3JlZ2lzdGVyKzB4YWMvMHhmMCkKWzxjMDQ0NWFkMD5dIChkcml2ZXJfcmVnaXN0ZXIpIGZyb20g
WzxjMGIwMTBiMD5dIChkb19vbmVfaW5pdGNhbGwrMHhhOC8weDFkNCkKWzxjMGIwMTBiMD5dIChk
b19vbmVfaW5pdGNhbGwpIGZyb20gWzxjMGIwMTQ0OD5dCihrZXJuZWxfaW5pdF9mcmVlYWJsZSsw
eDI2Yy8weDJjOCkKWzxjMGIwMTQ0OD5dIChrZXJuZWxfaW5pdF9mcmVlYWJsZSkgZnJvbSBbPGMw
NzUxYzcwPl0gKGtlcm5lbF9pbml0KzB4OC8weDEwYykKWzxjMDc1MWM3MD5dIChrZXJuZWxfaW5p
dCkgZnJvbSBbPGMwMTAxMGU4Pl0gKHJldF9mcm9tX2ZvcmsrMHgxNC8weDJjKQpFeGNlcHRpb24g
c3RhY2soMHhlYjA4ZGZiMCB0byAweGViMDhkZmY4KQpkZmEwOiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMApkZmMw
OiAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAw
MDAwMDAwMCAwMDAwMDAwMApkZmUwOiAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAw
MCAwMDAwMDAxMyAwMDAwMDAwMAoKUHJlc3VtYWJseSBpdCBsb29wcyBmb3JldmVyLCBkdWUgdG8g
YSBjb252ZXJzaW9uIG9mIC0xIHRvIHVuc2lnbmVkCnNvbWV3aGVyZT8KCkdye29ldGplLGVldGlu
Z31zLAoKICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tIApHZWVydCBVeXR0ZXJob2V2
ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02
OGsub3JnCgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3BsZSwg
SSBjYWxsIG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5hbGlz
dHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
