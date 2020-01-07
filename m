Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76CC313284F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 15:01:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fxJmUCnMxndsHhrZrLGJYA0uuVHTElRcauxUd/vmpsQ=; b=NEtXmMPF70/iv+
	vZOgbib0F/Qsn5ZE6Z/WhXgcyz9VMEYQC2WimRd0HwvyfyUCdB9FJHla+bfjxhkoeWIwu0lnLreoQ
	jxXIQPul1wCM9GNaC3wKjK6UeprBDXOHAJlx6wjmN8dHgOJJ91HmhzrKcmUjQLMw64xxV6wBpcdDa
	PEirX4swxuZ8GGve9rmOioap6qMckIqh4NCRVOWbSZ/lK6GJtpHREmPuKBQrgayCyakYmJzpzRSBO
	9VIBP8YO0iOKzZNduwzBKA3Dh64LAZ2RLfc+kAz/Y9vNxoiF3V1ApS3BdRzTKQOKY3TXlUkvAOpPe
	NIT03hnxmi1e7/TdSQ9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iopQP-0006Rs-Rb; Tue, 07 Jan 2020 14:01:37 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iopQH-0006Qo-OP; Tue, 07 Jan 2020 14:01:32 +0000
Received: by mail-ed1-x544.google.com with SMTP id v28so50361549edw.12;
 Tue, 07 Jan 2020 06:01:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1DdkH/5E1tsHkzF5jhXew/z+AFPdpz7/Gvbqbl9G+dg=;
 b=d098/Ap5WZLDYOVx0LUlRnuUilSy+QZyFpM2S+2zMcaSMbQYhJs7Zsv6FI/Ks5jxXv
 dQO2dtGfqCwe9noHFs3y6uhVVyyaaGYPvZwl65t38wPj+hyImcuTHeqj5VyIA4f2lLWb
 UFEa9gC++l0TOhMPwTDLWof0xt/wpRXKZdRfavRYAv8KnTTjshhiZxdDSWfOtyFbT1Bv
 ymkgIQhCEUdCHX9AxIdCz7QsLJrymPx3I4pwcbwTXRCmuq1rwukCSqsog4onHzB8ED3B
 As0e8Ppu27OLG9hHYWl1FLz5+jvWgt0sYgd2BvjO6PTzcD9XD4qEGylhNQzi6oZNCc0p
 +UOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1DdkH/5E1tsHkzF5jhXew/z+AFPdpz7/Gvbqbl9G+dg=;
 b=Ar3mRtvxbxW29VdNWSULqU9Lwto7t2ZXhjT+mpBVSGFew5wtnuCbvgiAfT8IRiZb+r
 ObryAiqBTMat+hfJEDCTbJaEDgY1GUNNTZ2PodilmAN0eh7SwCtBRpAsqPajH2YKsENK
 f/55Rt2wFKkUKSjZU5kqlGzJKwlYXff4C26inm4nvkTggvK8Tjsfo/YjoBZcYjbiQ54w
 1APeMypwPhLhMCLAcdeSAIEpQ1SI2bZUFgH+j110rYdxoOdloEeStVALrsLQLHrbp5zY
 uw63ShAr2FRF5aatxlXHyspXB+HN9BProYeBZk13NLZIX7k2xYHr8+efABbsPMWSzzdg
 XjYw==
X-Gm-Message-State: APjAAAUiHkPnuoUVkT77YdmjYbOAzDv68afx/FOQm/NGusS1BiFvWF5u
 o0J1RiB/LykBxTjpMXtFZWGUBmKDewh775gUGEw=
X-Google-Smtp-Source: APXvYqyj/Sjok9k+8DFvLcnokJSMsKngAK+B55iujYFUBH+0eeHn408PpI8AyVvrp43iXISHPpiSNBLhnBPRapSUjiQ=
X-Received: by 2002:aa7:c80b:: with SMTP id
 a11mr115581083edt.240.1578405684201; 
 Tue, 07 Jan 2020 06:01:24 -0800 (PST)
MIME-Version: 1.0
References: <20191226203655.4046170-1-martin.blumenstingl@googlemail.com>
In-Reply-To: <20191226203655.4046170-1-martin.blumenstingl@googlemail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 7 Jan 2020 15:01:13 +0100
Message-ID: <CAFBinCBJwHmQaHMEdZziD=qopqzG6sc2PABkt4E5Hrf927ussQ@mail.gmail.com>
Subject: Re: [RFC v1 0/2] dwmac-meson8b Ethernet RX delay configuration
To: jianxin.pan@amlogic.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_060129_795433_D13B0D7D 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Jianxin,

On Thu, Dec 26, 2019 at 9:37 PM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> The Ethernet TX performance has been historically bad on Meson8b and
> Meson8m2 SoCs because high packet loss was seen. I found out that this
> was related (yet again) to the RGMII TX delay configuration.
> In the process of discussing the big picture (and not just a single
> patch) [0] with Andrew I discovered that the IP block behind the
> dwmac-meson8b driver actually seems to support the configuration of the
> RGMII RX delay (at least on the Meson8b SoC generation).
>
> The goal of this series is to start the discussion around how to
> implement the RGMII RX delay on this IP block. Additionally it seems
> that the RX delay can also be applied for RMII PHYs?
>
> @Jianxin: can you please add the Amlogic internal Ethernet team to this
> discussion? My questions are documented in the patch description of
> patch #2.
do you already have an update for me on this topic?

while we're discussing unknown bits of the Ethernet controller I also
remembered that we're currently not describing the relation between
the "fclk_div2" clock and the Ethernet controller. however, as
described in commit 72e1f230204039 ("clk: meson: meson8b: mark
fclk_div2 gate clocks as CLK_IS_CRITICAL") this is needed for RGMII
mode.
it would be great to know the relation between fclk_div2 and RGMII
mode on the Ethernet controller!


Thank you!
Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
