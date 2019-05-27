Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4312B2BA06
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 20:22:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ah96O0wQszpM4ktBVdyl7bCA8n5mlXD2I3bo4VGqBM=; b=UaY+0MP9yFVl3i
	W6VPSn/1kRKdcq7X9E5iKh4cAKCDpS4yuFRz6LDl2OLvxLSeqvT6UnmlukWeuaBS0YHQ5QM+ykpux
	oF9EiLOwJVTWZsoNiaAIaB6FOQo1FohtyS3/0GPFqikQYWME3It9op1FKZEQ1Jo6/vDkLRoBmJKiu
	AEr9aFRPgSZhzbouMKizS9s49uY41cO0Sv8lZZwBgcrtAqbechrxu0s4Xas9wupKsjk1DUlCJiidM
	efR1TrHf1cUMaMXiUIUaaRG4MQLPrLze9j6AZ0OueVagWILNkhqAnhUDyMnTJhyvClZTG4emhuGkj
	OMaAxcT5mtccxHUYEZiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVKGA-0004kY-Jf; Mon, 27 May 2019 18:22:10 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVKG1-0004j9-P2; Mon, 27 May 2019 18:22:02 +0000
Received: by mail-oi1-x243.google.com with SMTP id t187so12446788oie.10;
 Mon, 27 May 2019 11:22:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=P+FiXAOea0Da36+0fuzZTMwOJ1pKxmssdqT24E7Ljks=;
 b=EXy5Jch2r8lQ3wOHylrAfl7aymelwxSm5mLv4h/iH5tNR53XBcL5lLzx9umgiSt9jr
 x+edbQ/1lz+Ng26bcE1uw+teKoot6ROIIFb/85pZhhunR1RVKiAUevyFHYz7RO96Nrb8
 bKB5Kp8E4KRko2n/NMEnx/+Yb0Qb1idYbLIEMsb1w4vy5G1wJvC3azYd067ucdcDBTCW
 9s/lxR8Xgri+cLcUwhES1GChPO3L84gYbXFOHGYHLMHgXYtq8VrmHYTQUMl36nPj+VV+
 PuaOm+d3Tw2r/30Chj68qN2MUI4hhxVmofs8auot6ag7PtUQKEyPZCI6il86U/XEjlHf
 3chQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=P+FiXAOea0Da36+0fuzZTMwOJ1pKxmssdqT24E7Ljks=;
 b=IUv1jR9ta9i0Z5/VwAgnbHu58Db2z2R//QUswnKwL0snHMHC54agyZfDRIC8kQ+yV4
 ZryxKLiB03TwGQKSqsLqeSlRNKL4i/zzwEBpmqTpoj0vE9TVAzKsyXxVsosGcFnj8Kt/
 TIbsjgMrQVT113qJsVPqm9ndMpgvIUTWp+8kuhT011838AZI27RrLziVf8JPaYnZItDC
 upicxeD0OM+UidV7PkwQeK+33zUE9f5ZPHsPftL0Pf/x1VMvQuL2uhbVaXDsIKebd2sQ
 kBfPcsoeWieCoQQ1QtMxDOzfD74emZhWgV8wigQiWFamSExsnIBsYiJcqsjzTYHPjaQ7
 vaUw==
X-Gm-Message-State: APjAAAXneqO2/dvPAWwDwBUWxSFjOq+kZqhZ1N2+2VAlR5oEViFkdzd6
 pzkjZ0vsgZ2nroPMpbpBvXuhJz+wjI+BpqsBiOo=
X-Google-Smtp-Source: APXvYqxFnHFi0FhTyZznpUbIgThLVqlOOxZ5b60t+J3xjXTJRBUFohr7MpkWLfXXloofSw0ZHtPTxVALCpnakESKsDQ=
X-Received: by 2002:aca:ed0a:: with SMTP id l10mr188186oih.39.1558981320657;
 Mon, 27 May 2019 11:22:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190527132200.17377-1-narmstrong@baylibre.com>
 <20190527132200.17377-6-narmstrong@baylibre.com>
In-Reply-To: <20190527132200.17377-6-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 27 May 2019 20:21:49 +0200
Message-ID: <CAFBinCCO3gx1d4pjOaHK0VPoYp0z4cPx3_YsTOpzFtmJSYQZYg@mail.gmail.com>
Subject: Re: [PATCH 05/10] arm64: dts: meson-gxbb-vega-s95: fix regulators
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_112201_810960_90C4CFCF 
X-CRM114-Status: UNSURE (   7.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: khilman@baylibre.com, christianshewitt@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 3:23 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Align the regulator names with other GXBB SoCS for upcoming
> SARADC support and SDIO/SDCard fixes.
> Also fix how regulators are passed to MMC controllers & USB.
if I understand this last sentence correctly then the usb_pwr
regulator should be moved to &usb1 and passed as vbus-supply there

> Suggested-by: Christian Hewitt <christianshewitt@gmail.com>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
apart from that:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
