Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6E41E210A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 13:40:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WFTr4mmJFVfcTRoecWBLjw50u7vZRK2VWApN/0FduVA=; b=ise7clBrhAzA9O
	VyeXrwrZE4t8FOtk6B0gGdXdOhxawTFnxyjdZY53SSnfuoK1xIUBG36VGMtWt6yoYOjElqQXvw48F
	LLu0rhCYLXmLI/hVUuCnxoi/1fOGef/40xiDPws65LUmtXAyqdexLvczxQ+j4Xizsr27JJu8SoEQA
	UWEGVNLAxM6uIjHLezpkoCvSWQYVJLANW2/VLqMqzhhM+JGFMI3+QLA+QDuZst9wMM4X6B7F9+sLt
	muQkmTyXBdnXnMj8NE52RrrWI2u4TyU2xTaLlr2vlGX4NnN3kCiTIgOoKuIAwigeOP3an6BO6K9FW
	+4zLkvS1hc7665v6WhcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdXwT-0003Rk-TB; Tue, 26 May 2020 11:40:21 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdXw9-0002xB-DJ
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 11:40:03 +0000
Received: by mail-wm1-x343.google.com with SMTP id u12so2881611wmd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 04:40:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=XNz9J6b/OZ2/1Fmez/GnqprE7eisy/1+uGqJfTQOLC4=;
 b=I1UPOd2vABdAgPxVneTOoP6tzj7xsCGRvOyr48UXRni0gpsT73O9sUzt6bpt9joQ9c
 qLSUnyrLyk/vOjwAhPxEsbAagm5ZeyQu0b+SQv26I6y7nz3lUI37rAijnWn2OeEA9HBI
 CyucIRXauIONPkXv7CAJVAf7J6nx1z0aHePaD8Q0dh2PU7I9pOQrm1OGisaurBL5HDFk
 SE8VVwXSrWfaH9+yA8xNasTY2UtUxOLd61G6D0GO3OlYxrnAVRQuUfZS5B5QDl9uMcBt
 Ks+AvkW9VHguZwPrkcFVlheKfLq7OTeyshjqrzI/ZRIwkdSnZSkm6ABJglXylBR2NLHy
 wQMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=XNz9J6b/OZ2/1Fmez/GnqprE7eisy/1+uGqJfTQOLC4=;
 b=iEreKcfkM03Tkrm77NkNrCiUQiAuwbVqOBrLTZS4zNZq8Ah8wWvMLaki+Y+exaqpwO
 aFrvlRG4OHn3+lIc1DuDLmmBgSpS7hCFCir/jmMhB5q0mhULViyDmVU2/mt9ydsDvT/M
 Um5U/emGuYswMm/LvDFRKCqfsSBrXvo/xmMjMGeVqiQZWYi+Z5bEaDU7av5zlR5NfQ/N
 /b1zT0NQdmjRKgL9EdSd8Hd+lO78nW7hJxWquqP0TEsEwQMDi/DztWYv1OA98xpejNxG
 7HGI5+MKXor2Dl9MoOoNENv8W7d7nC+QmvPWdAJut6qSmN+GWo6X1JtJPin7IjwBFrSI
 MB3w==
X-Gm-Message-State: AOAM530AShRXUezrOatcjDJ4sPP79vrAkof+wnHRLmutvbVVxBz7ylvy
 4WD8gtCE/8v//DjtDFcvZKtSd01vbROJFvn8AAw=
X-Google-Smtp-Source: ABdhPJyrNBm0FnRwRbiS9MIhci3lGQnb9jCFVoa7fhtDCFX+azNqEJP4JBuYkUlsFFtwtUsrOcdqCXJvlgMf3wA7HqU=
X-Received: by 2002:a05:600c:2313:: with SMTP id
 19mr1059849wmo.51.1590493199402; 
 Tue, 26 May 2020 04:39:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200514155737.12160-1-martin.kepplinger@puri.sm>
In-Reply-To: <20200514155737.12160-1-martin.kepplinger@puri.sm>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 26 May 2020 14:39:48 +0300
Message-ID: <CAEnQRZCJ_+V1+bd4JsWBqJVNu6-ETckxsD0qvkr48in9mj0J8Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: Add a device tree for the Librem5 phone
To: Martin Kepplinger <martin.kepplinger@puri.sm>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_044001_484356_BC3753FE 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [daniel.baluta[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>, kernel@puri.sm,
 Anson Huang <Anson.Huang@nxp.com>,
 Devicetree List <devicetree@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, mchehab@kernel.org,
 Fabio Estevam <festevam@gmail.com>,
 =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXkgMTQsIDIwMjAgYXQgNzowMiBQTSBNYXJ0aW4gS2VwcGxpbmdlcgo8bWFydGlu
LmtlcHBsaW5nZXJAcHVyaS5zbT4gd3JvdGU6Cj4KPiBGcm9tOiAiQW5ndXMgQWluc2xpZSAoUHVy
aXNtKSIgPGFuZ3VzQGFra2VhLmNhPgo+Cj4gQWRkIGEgZGV2aWNldHJlZSBkZXNjcmlwdGlvbiBm
b3IgdGhlIExpYnJlbSA1IHBob25lLiBUaGUgZWFybHkgYmF0Y2hlcwo+IHRoYXQgaGF2ZSBiZWVu
IHNvbGQgYXJlIHN1cHBvcnRlZCBhcyB3ZWxsIGFzIHRoZSBtYXNzLXByb2R1Y2VkIGRldmljZQo+
IGF2YWlsYWJsZSBsYXRlciB0aGlzIHllYXIsIHNlZSBodHRwczovL3B1cmkuc20vcHJvZHVjdHMv
bGlicmVtLTUvCj4KPiBUaGlzIGJvb3RzIHRvIGEgd29ya2luZyBjb25zb2xlIHdpdGggd29ya2lu
ZyBXV0FOIG1vZGVtLCB3aWZpIHVzZGhjLAo+IElNVSBzZW5zb3IgZGV2aWNlLCBwcm94aW1pdHkg
c2Vuc29yLCBoYXB0aWMgbW90b3IsIGdwaW8ga2V5cywgR05TUyBhbmQgTEVEcy4KPgo+IFNpZ25l
ZC1vZmYtYnk6IE1hcnRpbiBLZXBwbGluZ2VyIDxtYXJ0aW4ua2VwcGxpbmdlckBwdXJpLnNtPgo+
IFNpZ25lZC1vZmYtYnk6IEFuZ3VzIEFpbnNsaWUgKFB1cmlzbSkgPGFuZ3VzQGFra2VhLmNhPgo+
IFNpZ25lZC1vZmYtYnk6IEd1aWRvIEfDvG50aGVyIDxhZ3hAc2lneGNwdS5vcmc+CgpGb3IgYXVk
aW8gcmVsYXRlZCBwYXJ0OgoKUmV2aWV3ZWQtYnk6IERhbmllbCBCYWx1dGEgPGRhbmllbC5iYWx1
dGFAbnhwLmNvbT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
