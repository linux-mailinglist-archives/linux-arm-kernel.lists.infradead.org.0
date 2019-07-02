Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 655985D84B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 01:03:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6kmKVDBYJbMks35mUcVMKIaNWFN97a6XvmAwHJyoJt4=; b=VDlwzVwQYPiwqN
	5ViKZ6Lol+KUx6+WQ6fCpkZJvUSKN/VrwBXRd9Lmhsi6R4YKHOpMDulpVFMjbarJbdbt9ZpPlwQWv
	cEzm72WrfGE4jbrokql58i83JQjg5JYOA72LBtcrTL4mplaHEgIQDW7DiplhOJvz0VEijY2fOlfVV
	C8PObjVKSQE49TQLE4kAvNXf0vznUN5qxqumg2W7zPP3DjnABMasEae3oepo9kNDQF85kvJA0gr1X
	7qYdjj7gY1pvCxojihaaV4NjWb93/G+UQ4rXQHUImsxwXdBTM7qjfoVfrQjUbwC1PBIfXPSA/09N9
	AwnMZFb/NF4xLeitt/Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiRoK-0004O8-8y; Tue, 02 Jul 2019 23:03:40 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiRo6-0004Nk-E8; Tue, 02 Jul 2019 23:03:27 +0000
Received: by mail-ot1-x344.google.com with SMTP id z23so236184ote.13;
 Tue, 02 Jul 2019 16:03:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ByhsgyjfPRCaYRtGVf0X74WgyTuKcSf1bOHMoBSZqlM=;
 b=DoR1ThEgGbjv19cCdz5BE+R5n05F1pnqjFfoBynSpfmBlQXLCSunPFhbew6NEfAxPs
 hvktSZdshjCkXciJetywqYC7halqVs7rQ//KLFsw2G6zRA5AsIWS+MKAiB3BahXdsdnG
 3pcSjZaiZgcd8FrveXvr89fZ0fLQgFuSogZ9Keg4qmRLU/wDp3HL5P22/Mw1kYoZQ5+G
 fuMux96KZ77382ZmWkZNoWLAaBNs9Wxu3z9DmmEm1nfFS9MPhHQDYbiOF++COdVen6EM
 7Bk7sB7xgr9U92H4vgfSCaES5Uuh91WVyRugW9AD2JAN7CGio1F23wG2jEvDRRzT8tfR
 wLqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ByhsgyjfPRCaYRtGVf0X74WgyTuKcSf1bOHMoBSZqlM=;
 b=goxWfS9nzmOCjyehVAYFM+aGMrxEG/saYHBoMfieb+gBTbcblJok1SM80RikLg5FwL
 3idQsLnuow4JOCc9yb74q3aHIQr0c2juBA2WF9fdSw8wZL1auKtUrvYdPgvKdcOappBS
 NDAJAmkD0UJrdDSHrUgThbruN+ZN/l5MztAs5cSgJNxt7xDY2Lk5BA9EQXfNwhPwG9h0
 HUS8DtXuIAXzlKhV7vaEn0p5iUb2HZR3dBHobJK170Dv4Jr4a2s+qYqqkEsQjQPX/fGB
 PhC6l4DYeNSL20wy8mDhEdT/N5IfKa41a+xampub3zkIZ92N2xElwX3ADSyQJun+tMd7
 nhMg==
X-Gm-Message-State: APjAAAUWw/7Itw9NhlfRlHunpB6VOpA2EWlMFDDKEUc4F5cHGlUgQFQy
 eBlSJhMHjwQGvTezFyyhC5lEnyrjIB2/WGEZ4vo=
X-Google-Smtp-Source: APXvYqzMU6LhYLtDxe6IzTmM1WolsPD+74qKOzIux1HcUkzeXscSddhWfH+OlTyFXLefL/eH9LreXfId+iDH0UNqUbY=
X-Received: by 2002:a9d:6d8d:: with SMTP id x13mr4126550otp.6.1562108605726;
 Tue, 02 Jul 2019 16:03:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190701091258.3870-1-narmstrong@baylibre.com>
 <20190701091258.3870-9-narmstrong@baylibre.com>
In-Reply-To: <20190701091258.3870-9-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 3 Jul 2019 01:03:14 +0200
Message-ID: <CAFBinCAwvAb42uitinRr0k_Hkb_cDOc9dygQgg54E5nO69h=fg@mail.gmail.com>
Subject: Re: [RFC/RFT v3 08/14] clk: meson: g12a: expose CPUB clock ID for G12B
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_160326_481011_1B61F92B 
X-CRM114-Status: UNSURE (   6.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
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
> Expose the CPUB clock id to add DVFS to the second CPU cluster of
> the Amlogic G12B SoC.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
