Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA03C4A73F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 18:43:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CM5lCXfem7FxTb/RCJ9H2ww6zFWtMJWsHGJa6GXwLq8=; b=ESYK3YS08kf9Wv
	0nXFC+tVhBqLqu8iwRe/27pPucs00Z31jyWlkULTJeqbBOMb0ZRIclsmZz2C0kp6ikbC2J37ZJoT8
	5DjO3VYhviAKucERr8vQMUNQgJgX7YyUOjxRkOEYC8fTjss5TkWGsWG6R33tI8a30oCDHbJzdIjvi
	k32KcbILoaa0jIn8BNpx8ghDU5lt6MlrrqS4JyTMjUoLVrcFRvkxRjrK/Z1dXJKDEf2iA4iAhhxmH
	n5edDY6u6nV9o+jqIcVCLB2EcK87N/uaMvvCDx6CSSQdPa2A5/o0Myv4BHAXud+DDpc1rn0bmbcuN
	EHQanV6uO0eUwPngTI1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdHCv-0004s4-4d; Tue, 18 Jun 2019 16:43:41 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdHCj-0004rF-B6
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 16:43:30 +0000
Received: by mail-lj1-x243.google.com with SMTP id s21so216065lji.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 09:43:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=PmUtOKbwJ4eVMkOuhlC0uRgI+GJZ2DiFmkatq42aofs=;
 b=noVIkCDp4DXaUXUJYjJsp7quJyO98EaXAo/9wvAq8keNzIId4a9i4vKnUA+Re+11e4
 ShXLX4ryoM3/+LkuRIOHVHN19KrnICnrAVN4bOzj7AlcbMIee5zkGx2Ta4hGaQjL+cpQ
 tlt0BRnfrvcixg4/oRl3z93KcWQxj+yDXiBTLO/gQw8l9N7YzNjGuePC0Dr0PV3YgJyd
 gddC3zY8TcfVDpIamLrJUlaPXdo8Zj1XVl3xdhA1oy0pLS5P0lgiKJwmpGs+CR7/4JDJ
 rsfYyDjudEYOhLB8CxtNOHeMciHQ6jcxfIoa0OOFSuZys1Vw5I1EmvaJLfne7nvioDKh
 6Ydw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=PmUtOKbwJ4eVMkOuhlC0uRgI+GJZ2DiFmkatq42aofs=;
 b=ZomRAptE7TZPmPAsTwDzaWnYYAeyCaaG0oXXZKbk4iDiTtHXadzhWvszPuPdEHJdfr
 al3tFHMh7Y11JBb281yzB0EJlH6J1aSAwjKyEUHlMLxq8huZ1zp9gzHzlSNpeZsgWIZ3
 EZwneT3xB7wFaowFXTeOhXg1GkhL3TbfJ2fasbnWuAoimGcH7ejUFstUnbDUkE8KlT9S
 R4zeeqbsq9pZzodTcucBfvBZUL9odcT1fDLXAEJd+/BAwpD39LUlyVX5f27BaFy/BeNd
 8d9XmCYpcLrsgfFPErLraXVayZJIFjbNSN290ZFNq1yfv0fLDpXacBgAT4chcY/+h9X3
 Z1zA==
X-Gm-Message-State: APjAAAW7WFIkXeMcbjafHHxDY599BwpX2Ue9TCK/mM90hWf//6kQ/ZRv
 zGagL3bHcSLweKcdsqT1i+BRflwbu1mOs9BB68s=
X-Google-Smtp-Source: APXvYqzttCfZEG77i5UhIYcLtVQf6CIc14p1/0gQIwvbf6Qaa3h5awAgK1rwzNrkpz9/uVFGrZM9qO/N3/XXZUSQ4UU=
X-Received: by 2002:a2e:5d1:: with SMTP id 200mr45338385ljf.10.1560876207427; 
 Tue, 18 Jun 2019 09:43:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190618155834.15545-1-sebastien.szymanski@armadeus.com>
In-Reply-To: <20190618155834.15545-1-sebastien.szymanski@armadeus.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 18 Jun 2019 13:43:38 -0300
Message-ID: <CAOMZO5AJbO11Cprr1Pd1qmdWahSVJm5C_-8Y8Y0hWgPK2a=AmA@mail.gmail.com>
Subject: Re: [PATCH 1/1] ARM: dts: imx6ul: fix PWM[1-4] interrupts
To: =?UTF-8?Q?S=C3=A9bastien_Szymanski?= <sebastien.szymanski@armadeus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_094329_400360_1D5E6A62 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU8OpYmFzdGllbiwKCk9uIFR1ZSwgSnVuIDE4LCAyMDE5IGF0IDEyOjU4IFBNIFPDqWJhc3Rp
ZW4gU3p5bWFuc2tpCjxzZWJhc3RpZW4uc3p5bWFuc2tpQGFybWFkZXVzLmNvbT4gd3JvdGU6Cj4K
PiBBY2NvcmRpbmcgdG8gdGhlIGkuTVg2VUwvTCBSTSwgdGFibGUgMy4xICJBUk0gQ29ydGV4IEE3
IGRvbWFpbiBpbnRlcnJ1cHQKPiBzdW1tYXJ5IiwgdGhlIGludGVycnVwdHMgZm9yIHRoZSBQV01b
MS00XSBnbyBmcm9tIDgzIHRvIDg2Lgo+Cj4gRml4ZXM6IGI5OTAxZmU4NGYwMiAoIkFSTTogZHRz
OiBpbXg2dWw6IGFkZCBwd21bMS00XSBub2RlcyIpCj4gU2lnbmVkLW9mZi1ieTogU8OpYmFzdGll
biBTenltYW5za2kgPHNlYmFzdGllbi5zenltYW5za2lAYXJtYWRldXMuY29tPgoKR29vZCBjYXRj
aDoKClJldmlld2VkLWJ5OiBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBnbWFpbC5jb20+CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
