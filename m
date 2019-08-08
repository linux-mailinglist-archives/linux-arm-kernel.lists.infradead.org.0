Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B6586AC8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 21:51:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j3Hd99rsq9wu9ezrmDQov5UBuSnn5T3/sBlWnD6RJSU=; b=PeTcKzxJ4u8v4A
	Ecnbmmkp4W4h7B7BZ0nRx2q5CwmnjtzhLnvaTGg5XvZfL0tNvRwzRwzpnkBdjD5D/Z+dTKvGmegz+
	qJC/qkQcjWQEmXwM4PCe830p0K49Jk8DRASX/x/P841pLPAuzkz2kioTA2cESAX+hJ4z1CqRwUDNr
	8UIdlawdUnVWPB9vpgb/T4kOoHgC2t/UH9d/EG0rpYKfGMJTD75r2xoatRGrhiqM+qpUS34vjHuS1
	wCiiKhhbTMEsin8d1brL+byEfI+thcZrwCfVhSM+tRiCIRLLWqPygRl1AwDJ2kLrM4wQIsOYaCqLm
	/FifKItV7ngAFRXA6/mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvoRB-0004jd-Ku; Thu, 08 Aug 2019 19:51:01 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvoR1-0004iH-II; Thu, 08 Aug 2019 19:50:52 +0000
Received: by mail-ot1-x344.google.com with SMTP id q20so123341165otl.0;
 Thu, 08 Aug 2019 12:50:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=emp4LKrOwlvn9H3QmUc01UuAWl5tSDoRJbMuuvNlrME=;
 b=t/7RSpYR2HGgbRiGdk0CajkHX9bGeXcBLovq8VvOSE6x2wgw73SYyiwvEKrgbTG7z5
 yBSDk5KRn+FWG5gWjSL+sV1xWHF01X/SII/V8sVog7DexMmFSYavR5WB76ud8vP+U4sq
 RHTTMXYKn0eW2/Lm/T73ZDd+XEN/1aUdFri497UIsjuM73EAtAATTFRqS05IVSTfjdi/
 FBdjAeI/ZwrZPRZD+t6XTbOtu7T9uQBGeZPAHhkBg8vp6PcBrzY3UypzqNGTD0OC4iHh
 q4mCA2vZ9f06FgWkCStM3wzI/1kb2bobpfhVus0MZM+eyngDpYVvaHgv+VTuZOZ0J9j3
 HB0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=emp4LKrOwlvn9H3QmUc01UuAWl5tSDoRJbMuuvNlrME=;
 b=a6glOoxolvYXbomHhVex9RZ9vzqvbMxjCl2/L3q9+qowas9Y/dybRDxXAq1+lHhuls
 2yRhiHP7hzJUpm905qdYzPBcVsjbeacb1F1oiqCTBNWi/jj16rHrSQpaqPQIe8DB1mx8
 as2uZ92OXZxb7G8avBNCGT8fBkZ1tRQnrGdnIJQ5v91bltzr++AKAKstth6bAZmEkj5T
 Wz2T8LwJ9W7qFlzz6po3P4rKyjDmsTd4n3YjQ/hBeGva6ZTRw5BGA+RvuSCSUiOgNPIl
 CgfU691maDzQm8Ou9/nx/YEnoNEKTcZWDkYDYl82lhkqQEiFpflQc198C1PqveFyPwpz
 hH5A==
X-Gm-Message-State: APjAAAWdiBAI1dccyNG6jb6U3r+PLV36o6ws4hE5SDzJS0Rn3Wh080qf
 6CbLmzaMXC2EnezLPioIhMdVsJIc4XOlhI2XjbE=
X-Google-Smtp-Source: APXvYqwtQSZ14JChR+aroTklLVqzb1JzZPf4gpdcL4naxp+vaCBOQQTVtOAg7FG9u126l+w1dFP3b3tumbn2rLG+u7c=
X-Received: by 2002:aca:4ad2:: with SMTP id x201mr3968281oia.129.1565293850466; 
 Thu, 08 Aug 2019 12:50:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190808085139.21438-1-narmstrong@baylibre.com>
 <20190808085139.21438-8-narmstrong@baylibre.com>
In-Reply-To: <20190808085139.21438-8-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 8 Aug 2019 21:50:39 +0200
Message-ID: <CAFBinCBnVdTxWgqmnrPo-5uZ5gxy7p68w0PUa=_42fYxhVrDXQ@mail.gmail.com>
Subject: Re: [PATCH 7/9] dt-bindings: phy: meson-g12a-usb3-pcie-phy: convert
 to yaml
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_125051_602543_E2E97ECC 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>, kishon@ti.com,
 robh+dt@kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 8, 2019 at 10:54 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for the Amlogic G12A USB3 + PCIE Combo PHY over to a YAML schemas.
>
> While the original phy bindings specifies phy-supply as required,
> the examples and implementations makes it optional, thus phy-supply
> is not present in the properties and required lists.
nit-pick: the original bindings didn't mention the phy-supply property at all
I'm not sure if you have to re-send it, maybe this can be fixed up
while applying?

> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
