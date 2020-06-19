Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC932005D1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 11:56:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wl4aHK7hO6jx6m3BVwn4tjpbXgCZRwDicpjvul1P78w=; b=Nha6kGKMOBAkol
	kDOJgJa/2k/lTt4LrP9qN/qbxkQ07boKrlw7t4JEVNdwWGOzLlxhT+idn8Erj1/78QWGeXnaof+Zf
	5zBwqittileJxV+1aIvEmxrlUCxVULaXvtyP+Kiu6CaHyY2CGKjSTxPq/m6Gbs2cpbTrfg3dpjbaI
	ERWyR7YQrCDb5lLLEeQkrUF+af5bEyWPZ7WjaU2CtbWspHnAS03n1RrOl3UBUAFrUSSI4Ym9iet8/
	+CC/17obpvXtKZNPLBZPxVMg/k9m/nTw4DQJbbBSm7yjdNxZE8ZrfjPMrOBhui+d33NYm1V7Pcaw1
	RKprxP2gV108z2HEUMNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmDlN-0000T5-2O; Fri, 19 Jun 2020 09:56:45 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmDlF-0000Sg-3S
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 09:56:38 +0000
Received: by mail-wr1-x441.google.com with SMTP id q11so9085192wrp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 02:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=1JS1rdycUq6vgqQH2+7ZvG4o9uon7tAJlwkM4c63PgY=;
 b=PVRi3gC/fZlQunqVLn2So81p1Ud91tZpQr15Q/5kwFPL0U6WalnweS5VcVsV2JhjLW
 KcbtoQXQVD0cy4JvcN+q3XEMoMmBgpjRkkv6W+hU9bl3OEFcxXhVNbbAYTIksH1kUsA+
 5TkEUsyuw3/KNehaQKIm5Hz/kp7I+kHroqJ4PV/sE0YVStM9CRluUQ/q6VGVX/4/nClM
 ijfRsanlT1+fXrVCMuU2rRQHfUsxNco/bZeo21QMYR+oRcKOGvCRAbDpyh/LoEeYfr+3
 pYwaxVfGh78fgTs2v4fxCT7YIO4st9GKLds/4/toKTaZR6rFdGWIYKSkmdiqqJcIHIvG
 iWeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=1JS1rdycUq6vgqQH2+7ZvG4o9uon7tAJlwkM4c63PgY=;
 b=eCGFLIJRFAx2JfTibWvxWCFFfpbfNvDdI/RPMgVSlD437VZjiXQnRKloN0J8eJ5Zf8
 TW7QKw5gYX+xKtGcTf/BqxRfw9WZcEXxA3WQAovoCuujbICPvH5V9II+zGP4B2uZASV9
 AQrG3mlJg4op/i8y8kxzC4pDPt/cxeDSKWXdULkp76Uw4ydruf58Exw5ou0aDWSlK/Om
 WkzQqiWk5MxlcgoiXPWEVNcJ8yRrsVolglFsB9iZKj9yXeLDdIh8UhW2MbGDn4D0Xk51
 yeiwCwIH+nxTAGjv6piF9YT2BbeNGunx9RA2LagrS8p4FRIHFPsMN5FBeWwv1CO0Slb+
 SAVQ==
X-Gm-Message-State: AOAM530YgyGqIywBMnz6eRlUPH8nFXWdJfigZqHZ7zX3W1rR0r0Z25uz
 1XKxU5ujCyxG7y2CfGxa5W0=
X-Google-Smtp-Source: ABdhPJzcaS3l85fAKkuOnEw1pvUjUnPF1Amm5DPkqQuJObNM1spKEduO+FTl9LQFlBfQTYvf7o+iVw==
X-Received: by 2002:a5d:6291:: with SMTP id k17mr3166610wru.78.1592560595669; 
 Fri, 19 Jun 2020 02:56:35 -0700 (PDT)
Received: from macbook-pro-alvaro-eth.lan
 (90.red-88-20-62.staticip.rima-tde.net. [88.20.62.90])
 by smtp.gmail.com with ESMTPSA id t5sm913169wmj.37.2020.06.19.02.56.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 19 Jun 2020 02:56:35 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: [PATCH v4 2/2] phy: bcm63xx-usbh: Add BCM63xx USBH driver
From: =?utf-8?Q?=C3=81lvaro_Fern=C3=A1ndez_Rojas?= <noltari@gmail.com>
In-Reply-To: <8eca5ec8f892f38d2b174c4d4b26c7d4fbdd69c4.camel@pengutronix.de>
Date: Fri, 19 Jun 2020 11:56:34 +0200
Message-Id: <AC7E8CA1-3150-4DD6-8475-240CA49DBF93@gmail.com>
References: <20200619085124.4029400-1-noltari@gmail.com>
 <20200619085124.4029400-3-noltari@gmail.com>
 <8eca5ec8f892f38d2b174c4d4b26c7d4fbdd69c4.camel@pengutronix.de>
To: Philipp Zabel <p.zabel@pengutronix.de>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_025637_162532_C8D02792 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 gregkh@linuxfoundation.org, simon@fire.lp0.eu, alcooperx@gmail.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kishon@ti.com, vkoul@kernel.org,
 robh+dt@kernel.org, bcm-kernel-feedback-list@broadcom.com,
 Jonas Gorski <jonas.gorski@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgWmFiZWwsCgo+IEVsIDE5IGp1biAyMDIwLCBhIGxhcyAxMToyMywgUGhpbGlwcCBaYWJlbCA8
cC56YWJlbEBwZW5ndXRyb25peC5kZT4gZXNjcmliacOzOgo+IAo+IEhpIMOBbHZhcm8sCj4gCj4g
T24gRnJpLCAyMDIwLTA2LTE5IGF0IDEwOjUxICswMjAwLCDDgWx2YXJvIEZlcm7DoW5kZXogUm9q
YXMgd3JvdGU6Cj4+IEFkZCBCQ002M3h4IFVTQkggUEhZIGRyaXZlciBmb3IgQk1JUFMuCj4+IAo+
PiBTaWduZWQtb2ZmLWJ5OiDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwu
Y29tPgo+PiAtLS0KPj4gdjQ6IHNldmVyYWwgaW1wcm92ZW1lbnRzOgo+PiAgLSBVc2UgZGV2bV9w
bGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlLgo+PiAgLSBDb2RlIGNsZWFudXBzLgo+PiAgLSBJbXBy
b3ZlIGRldmljZSBtb2RlIGNvbmZpZzoKPj4gICAgLSBNb3ZlIFVTQkhfU1dBUF9DT05UUk9MIGRl
dmljZSBtb2RlIHZhbHVlIHRvIHZhcmlhbnQgdmFyaWFibGUuCj4+ICAgIC0gU2V0IFVTQkhfVVRN
SV9DT05UUk9MMSByZWdpc3RlciB2YWx1ZSAodmFyaWFudCB2YXJpYWJsZSkuCj4+IHYzOiBpbnRy
b2R1Y2UgY2hhbmdlcyBzdWdnZXN0ZWQgYnkgRmxvcmlhbjoKPj4gIC0gQWRkIHN1cHBvcnQgZm9y
IGRldmljZSBtb2RlLgo+PiB2MjogaW50cm9kdWNlIGNoYW5nZXMgc3VnZ2VzdGVkIGJ5IEZsb3Jp
YW46Cj4+ICAtIERyb3AgT0YgZGVwZW5kZW5jeSAodXNlIGRldmljZV9nZXRfbWF0Y2hfZGF0YSku
Cj4+ICAtIERyb3AgX19pbml0Y29uc3QgZnJvbSB2YXJpYW50IHRhYmxlcy4KPj4gIC0gVXNlIGRl
dm1fY2xrX2dldF9vcHRpb25hbC4KPj4gCj4+IGRyaXZlcnMvcGh5L2Jyb2FkY29tL0tjb25maWcg
ICAgICAgICAgICB8ICAgOSArCj4+IGRyaXZlcnMvcGh5L2Jyb2FkY29tL01ha2VmaWxlICAgICAg
ICAgICB8ICAgMSArCj4+IGRyaXZlcnMvcGh5L2Jyb2FkY29tL3BoeS1iY202M3h4LXVzYmguYyB8
IDQ1NyArKysrKysrKysrKysrKysrKysrKysrKysKPj4gMyBmaWxlcyBjaGFuZ2VkLCA0NjcgaW5z
ZXJ0aW9ucygrKQo+PiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9waHkvYnJvYWRjb20vcGh5
LWJjbTYzeHgtdXNiaC5jCj4+IAo+IFsuLi5dCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9i
cm9hZGNvbS9waHktYmNtNjN4eC11c2JoLmMgYi9kcml2ZXJzL3BoeS9icm9hZGNvbS9waHktYmNt
NjN4eC11c2JoLmMKPj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4gaW5kZXggMDAwMDAwMDAwMDAw
Li43OWY5MTNkODZkZWYKPj4gLS0tIC9kZXYvbnVsbAo+PiArKysgYi9kcml2ZXJzL3BoeS9icm9h
ZGNvbS9waHktYmNtNjN4eC11c2JoLmMKPiBbLi4uXQo+PiArc3RhdGljIGludCBfX2luaXQgYmNt
NjN4eF91c2JoX3BoeV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+PiArewo+
PiArCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4+ICsJc3RydWN0IGJjbTYzeHhf
dXNiaF9waHkJKnVzYmg7Cj4+ICsJY29uc3Qgc3RydWN0IGJjbTYzeHhfdXNiaF9waHlfdmFyaWFu
dCAqdmFyaWFudDsKPj4gKwlzdHJ1Y3QgcGh5ICpwaHk7Cj4+ICsJc3RydWN0IHBoeV9wcm92aWRl
ciAqcGh5X3Byb3ZpZGVyOwo+PiArCj4+ICsJdXNiaCA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVv
ZigqdXNiaCksIEdGUF9LRVJORUwpOwo+PiArCWlmICghdXNiaCkKPj4gKwkJcmV0dXJuIC1FTk9N
RU07Cj4+ICsKPj4gKwl2YXJpYW50ID0gZGV2aWNlX2dldF9tYXRjaF9kYXRhKGRldik7Cj4+ICsJ
aWYgKCF2YXJpYW50KQo+PiArCQlyZXR1cm4gLUVJTlZBTDsKPj4gKwl1c2JoLT52YXJpYW50ID0g
dmFyaWFudDsKPj4gKwo+PiArCXVzYmgtPmJhc2UgPSBkZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVz
b3VyY2UocGRldiwgMCk7Cj4+ICsJaWYgKElTX0VSUih1c2JoLT5iYXNlKSkKPj4gKwkJcmV0dXJu
IFBUUl9FUlIodXNiaC0+YmFzZSk7Cj4+ICsKPj4gKwl1c2JoLT5yZXNldCA9IGRldm1fcmVzZXRf
Y29udHJvbF9nZXQoZGV2LCBOVUxMKTsKPiAKPiBQbGVhc2UgdXNlIGRldm1fcmVzZXRfY29udHJv
bF9nZXRfZXhjbHVzaXZlKCkgaW5zdGVhZC4KCkV4Y3VzZSBtZSBidXQgSSB0b3RhbGx5IGZvcmdv
dCBhYm91dCB0aGF0IDooCkkgd2lsbCBmaXggaXQgaW4gdjUuCgo+IAo+IHJlZ2FyZHMKPiBQaGls
aXBwCgpCZXN0IHJlZ2FyZHMsCsOBbHZhcm8uCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
