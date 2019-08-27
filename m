Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A39549E637
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 12:56:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q3NCHe4sd2ym6UBKWGJFuO/wipKF1guHd6FqFH+Qi+Y=; b=rmo7eXjuvQgnhR
	wt9PDzU2LvaE65XYumJ7QoFZMPbROIMfYP40oMUrs+iT3sy2A1u8y4uDuZJkjH/iniPGRQYTZa6CE
	OEl/EWC8X3xWAW0JMfNNWmwRpGNcc7jaTi/QcuaTG0BCMU3WVlkLe2PCN/dqNMmRzEbH6XZ6Nc36B
	pwQxqLs+NVDtrJNB3FFxktEZqicZ3Wgp7wssVl/vwHWHHp4DUxLGfB6KFocN7KXNoORZh1JaJ6spD
	Dh0ljem3vw3LIzq33xk/771GVMv74Y1OvzwsFF2DCSxEsJTxJuSeRjUlBC4uCtcupXtPSUHUdItoX
	gj+KARM1jeSIUdtK49Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Z9Y-0000nK-WA; Tue, 27 Aug 2019 10:56:45 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Z8p-0000ez-Uc
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 10:56:02 +0000
Received: by mail-lj1-x242.google.com with SMTP id z17so18056289ljz.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 03:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wq/U2uqRcLoFz7h5fswTveJreTohoqdRqnhzH4lXvVc=;
 b=NqNrQmQF1TMINxnG3tXMC6N5lSsJnysRJ2K4cMrSNhSxsvBEaXWJi9hcdMosgflzuj
 FCBt/kJFLNjNFxuovam6nPV8YMSq07JTyoks0a12zNst31Hu/OGjLsRQnmnk1u95vL8q
 96rtvTczjT2qyj0J5j+n2gVnXJiyMoxyl0gQYV9ANzRPa+zfFMBoVKLhcSm8IYrhujwS
 pucH7orz6GYQ98O8FpJXrIVLkQxoTmG40eyJ8t4D4x49aEERcS6lSRbxVwxNB7ZkJn3q
 q7pgDqiayFM2B6KfTf4GFJXxI/QfLb9Z65Qyd1G85gHlazbmKo/koDG+OvWDpGLLPzqd
 jMPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wq/U2uqRcLoFz7h5fswTveJreTohoqdRqnhzH4lXvVc=;
 b=XEQScRsPbr2aSqGVxwS3dhYKZOqTagxNJTGJ9cz6ux7noqP5RbrGRZ9Lxn5Lv/bem1
 gD9A8lazoGwPBRYhIUHnPaux7saoy2MtC1REaD2mOWuZa13GY/rn2Ns82/ZSwvP5ccuY
 EQ2TVLBDFuGB/3jpKbo2VTZGQzAiwRJrll0/8KMVSGLB7qMAmixE82UQxN4aVjuTUCcP
 RquX9Yz9thduFs6kRCGSoSsZH90/cN5dyaZaHUixyQdKDraJt97VGi/YLtdC7hNIYuDM
 MEEqHrY1xMx89L5YHcSn0v1OAMYaiFbb7ijjJx80TKOFmo5LQQOnjIcTFPD9brlU9gY/
 sh4g==
X-Gm-Message-State: APjAAAXH5EnB0CPMYwy/6ksnjHwrNFTDpLhkJBiHyfdlIhppZWoEoZX7
 hbD1T9w8UFu+Y1sxQZW3na1NCr0c0VLIiW2CT5A=
X-Google-Smtp-Source: APXvYqzJByXIYwML49GNgKStE890AUBK1DvwMnysuxEQMAxx+kxsF/bgtN7N1xuNGViTj1IJJw3i7Lf8ckkaj1at2EY=
X-Received: by 2002:a2e:3c12:: with SMTP id j18mr12914274lja.50.1566903358224; 
 Tue, 27 Aug 2019 03:55:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190826180734.15801-1-codekipper@gmail.com>
 <20190826180734.15801-3-codekipper@gmail.com>
 <20190827093429.fkh4cqbygxxyvkk3@flea>
In-Reply-To: <20190827093429.fkh4cqbygxxyvkk3@flea>
From: Code Kipper <codekipper@gmail.com>
Date: Tue, 27 Aug 2019 12:55:46 +0200
Message-ID: <CAEKpxBmpNk=QPnOqCX7cWCV8qvxqhgEVT2AWhwGUmFMRyoF50g@mail.gmail.com>
Subject: Re: [PATCH v6 2/3] ASoC: sun4i-i2s: Add regmap field to sign extend
 sample
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_035600_116532_4D16944A 
X-CRM114-Status: GOOD (  16.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 "Andrea Venturi \(pers\)" <be17068@iperbole.bo.it>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 27 Aug 2019 at 11:34, Maxime Ripard <mripard@kernel.org> wrote:
>
> On Mon, Aug 26, 2019 at 08:07:33PM +0200, codekipper@gmail.com wrote:
> > From: Marcus Cooper <codekipper@gmail.com>
> >
> > On the newer SoCs such as the H3 and A64 this is set by default
> > to transfer a 0 after each sample in each slot. However the A10
> > and A20 SoCs that this driver was developed on had a default
> > setting where it padded the audio gain with zeros.
> >
> > This isn't a problem whilst we have only support for 16bit audio
> > but with larger sample resolution rates in the pipeline then SEXT
> > bits should be cleared so that they also pad at the LSB. Without
> > this the audio gets distorted.
> >
> > Signed-off-by: Marcus Cooper <codekipper@gmail.com>
>
> If anything, I'd like to have less regmap_fields rather than more of
> them. This is pretty easy to add to one of the callbacks, especially
> since the field itself has been completely reworked from one
> generation to the other.
>
ACK
That's fine....I've been doing that with the patches which follow this.
CK
> Maxime
>
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
