Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5EF13481A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 17:38:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vnubtcjq5cAA8QWtlvVEBGaXa+hqeE2eBlU8Gt+c+Q4=; b=bUsDtYb4083McC
	XdWXtOWTCD/jIKMZ6nbg6ARItiVjKm1G9Rxw9d8eH+zlwxzH9C0pPHJWCXLcktmpew1FtWectqN5O
	+btSg6jWAjmf9DXo32n3x/JhvgV3QuxYYCWcfNUOYwRqUuAJWRX8TizffEmjlGJyf+xko0VSPqSpn
	dd8+fHFGiZBxQIi209fpbcjM0qw+TSBppJCSw7c27QCXOO3b2mkSV1dQL7uHM5Jg8NUml/30+TgyN
	/2AuAAkTjtsx4k1kfSSQDpwLZ5i9XkivdEaXnb73sZdXKgtD40BofbBKydMlkd9OIR5bSXlayY0lO
	s8G300bt+fRvCTMiIlMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipEM1-00083Q-QO; Wed, 08 Jan 2020 16:38:45 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipELv-00082z-12
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 16:38:40 +0000
Received: by mail-qt1-x843.google.com with SMTP id e12so3309260qto.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 08:38:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jdl/Zsr0GR9wBuZ25Y72IklTzgLcGojCcmTZU2xpvSg=;
 b=G4tD0yfYdDnfrLq6TvTy2oWfqDssiATWAjnbai2Baiw/Quy5iNNW4Wb0jpKPkKCHp8
 bKgaCZWpKQBK2EXito5CHHhUVMbGGsyhUVwAy+Z5WmDXcpoSFgU5RUCsVL8HZdYdIskQ
 enww8n54r/Cr3zRuLMNxyjg/Voc1UBfl+nW3iBbuVO8+19RRH2sB0mVrROSidCk4stAB
 rNskIBBoPNw+JT65vN2St1iVJY40mJIcnMW8lv8AGwBQ+zGElhw5xqHiNyjwVDIJHQ2n
 et9YXENki5a9zFTTDZHtvwfUlZZsN2J29OE3p84aIlneYKpaFp2h0S6Kk+RRkrYwGaBa
 d0Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jdl/Zsr0GR9wBuZ25Y72IklTzgLcGojCcmTZU2xpvSg=;
 b=b0JJAgYUhh5H52n+9BuDT05yKW99vCXs3B4+b294IZ1iFL/gCbRIEJb1ukxZLCvXsa
 N5fTQ3AOH5SG7Ww00ssjCTnqMmUtJmWZq8+uqNPMdVxvZ/NWNkU1Dk8qqCNFKlnETYXL
 EjXqDJr4dULZLG+FXKeFErDvRwEE1XXt/4S6knflacUNs01NmEI+PTos6ViqC2VmI4NS
 bphSAkJhMZWP+Ia+noQiXS1aXO0iXIFrjXFsVBsclUaEcNA/WHp2TC6lIvcdjinNhi4b
 ieBaNOSf5KuFNCSk1YE0TWJChd7RdvL2p3YGBhyPO8E1sby7rpo8ni+G85pAjOICFUDf
 BNew==
X-Gm-Message-State: APjAAAXzNBvD+n64lgYBT7rZaE98F8eIRqjlkVQMUT3M7uHh/yR8nCFJ
 QQRjhkP9wO1/SAWrJ/saXCyPqzZitC6o8yRZhOg=
X-Google-Smtp-Source: APXvYqyf8ZmS/Vrjl6yL8Ikem4yqs1zjEZKOgvwH7KEFK407Kx1Ytf+6kPZx0dXkcS9x/BJ6H4WWaHdPjSKOMkHL7y8=
X-Received: by 2002:ac8:5241:: with SMTP id y1mr4256795qtn.373.1578501517734; 
 Wed, 08 Jan 2020 08:38:37 -0800 (PST)
MIME-Version: 1.0
References: <20200108042018.571251-1-anarsoul@gmail.com>
 <20200108160402.u44odtfsuhiuytfl@gilmour.lan>
In-Reply-To: <20200108160402.u44odtfsuhiuytfl@gilmour.lan>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Wed, 8 Jan 2020 08:38:10 -0800
Message-ID: <CA+E=qVeMvJ96OZ62E_B3byr4dGgtWd3NVD6qqB40gS7ExZy5uw@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] arm64: allwinner: a64: Enable DVFS on A64
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_083839_092687_923C85D7 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 8, 2020 at 8:04 AM Maxime Ripard <mripard@kernel.org> wrote:
>
> Hi,
>
> On Tue, Jan 07, 2020 at 08:20:14PM -0800, Vasily Khoruzhick wrote:
> > This series introduces new DTSI with operating points for A64,
> > adds cooling maps and thermal tripping points and enables DVFS
> > on all the supported A64-based boards
>
> Thanks for that new series.
>
> I'm not sure I've seen the answer, but how did you test that the OPPs
> were stable?

I've been using them for close to 2 years and haven't seen any issues so far.

> So far, the only method that proved to be reliable was to run
> https://github.com/ssvb/cpuburn-arm/blob/master/cpufreq-ljt-stress-test
>
> Could you paste the result (one board should be enough) ?

Here is a run on Pine64-LTS:
https://gist.github.com/anarsoul/23c361b42bcdf4f2e23624f74c4c94bc

Regards,
Vasily

> Thanks
> Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
