Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A7B5D84D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 01:05:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wID7uL6ehZS4vIb4FucN8TDOp93zDgkixw9RnrajB64=; b=BcguD5W3A0zYkF
	SMrrsFNkNw0FSb5UtD3UPTOmJgI+15YyOsV7De5Mxjun0VF781e6+jfGjPNtDiW/boMfjKryVZAcN
	qSwdw2k/27kqFvwz5deuDc+CRFq8bu9wurlvIYwENLuLOpze0P7FK8hUIsQnNpcBfnt9FymeqEK+O
	J/m0FxT20fmdORjd1+RfIk6zFkxFBChq9TmPpUsFU3DSU1X94pcMDUnmmiMME650y9T7okbBK05Nn
	2UBB4xCkxOpq67F5OPUWbdKTudN0W7KNWQDSO8dxliGqtHDgVl1phqx3C87HWsPwbU6HYTh5J/mmR
	YrjsVRSxOkRmGep3wjsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiRqX-00062S-G5; Tue, 02 Jul 2019 23:05:57 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiRqJ-00061w-OY; Tue, 02 Jul 2019 23:05:44 +0000
Received: by mail-oi1-x244.google.com with SMTP id w196so410259oie.7;
 Tue, 02 Jul 2019 16:05:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WW5toOARIQ7duYOFcBhdjxTG2zu+PE3OJ8IsJFKcDaY=;
 b=YWDFyFReOw5A20APKlPQm/STRGBj1lG8LHOh65917g5mJ3CVlnwLCbF3t8dJye81lq
 oBJDlbCvbynivEGV4PL+f6H1f+PwDRR2RC/aizii/HSO9X3qXEQC6DPoDrUfkBwl7Fop
 KmwDaeMAHWqt98M95ZV8rrFrjSD+TKIEmZefdO31XSn3yR15GT7keP1JvWMCx22492B6
 FYUCfHIAxRzKnEFDA3X37E4vpLk2rp4sNL3+/JIE41uTisDieiRtHKV3CGYtQrRlDNEc
 Y3WJl3IN0GHOQ2mesZlcHEbpaiy3jLjvP+baLuRY0ouxYEb0aUDLd/4e/1DBL/UVmzci
 swfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WW5toOARIQ7duYOFcBhdjxTG2zu+PE3OJ8IsJFKcDaY=;
 b=fRQ+gpnkogLGJFisrCsEaC4DvjnxwNnuHDXnU5svDUL4y//Hw4EynPr1EzIo2aJ2R9
 2Fc58W8BBhZ/TrGhrYVTJGooGh0wddnBPiLpY62LmWZURYtEBd2ABU5tA5En7GjQdznP
 Sr+W4+duAsb6fIubVPnAgp+9PM/Nh45rojg9TKnzbouHNfSz02Rsz1Z3PvsylACQy+gW
 2FNHvNdP1DqKbBmNAH14IdHePXyPI3U4YZ5L5hgFNfnZBtfia2JWkclZg777trSuZx/9
 AL6fq/VW2Jxuvjx+q8OoQI8WeR2R6vVjTA2ZRnC4FQLAHDBJho7OSk2TrahajV6ZBjYx
 UJUw==
X-Gm-Message-State: APjAAAWMJGn0j1mDQLxLVYo8CkwQ0Gid4g2VceCs1s258cPV1Yk9/0Qg
 CP+2lSfBg8UTJ1K7Ijndypx/sB9B1JofihlGi2jZIEc8
X-Google-Smtp-Source: APXvYqxlJf85RIzJ3+TzKp9rzx1O65T6vzrzCJARARCucN2vc1cY/g5Vzo1gF94okc60g5IoCN8PVau32fspA3+GGy0=
X-Received: by 2002:aca:5c55:: with SMTP id q82mr1435225oib.15.1562108742686; 
 Tue, 02 Jul 2019 16:05:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190701091258.3870-1-narmstrong@baylibre.com>
 <20190701091258.3870-3-narmstrong@baylibre.com>
In-Reply-To: <20190701091258.3870-3-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 3 Jul 2019 01:05:31 +0200
Message-ID: <CAFBinCCVCd1OT1AUCRtm2FB=ZzjuD3Gfs0vcQYLWd=gFqTHugQ@mail.gmail.com>
Subject: Re: [RFC/RFT v3 02/14] clk: core: introduce clk_hw_set_parent()
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_160543_828499_D86E0863 
X-CRM114-Status: UNSURE (   7.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 1, 2019 at 11:13 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Introduce the clk_hw_set_parent() provider call to change parent of
> a clock by using the clk_hw pointers.
>
> This eases the clock reparenting from clock rate notifiers and
> implementing DVFS with simpler code avoiding the boilerplates
> functions as __clk_lookup(clk_hw_get_name()) then clk_set_parent().
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
for the same reason this is handy for the meson8b clock driver as well, so:
Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
