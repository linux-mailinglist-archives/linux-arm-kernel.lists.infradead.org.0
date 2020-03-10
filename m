Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E14180262
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 16:49:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZWdHTiEPyNjIdoyHffajWmGXUYubGd8jXVQ6SL1VzRw=; b=ENjJ1HxuALzm5eDi8dcfq6S0h
	kcbWK0v+b57TgiBYqKC58i4lCnoWcKqcrsb6GjTl0pl/LjvmyEPq8GAUFeM0dvNTHcFugXR8bvdpx
	LKaI91G83CVXTvSqULI/Z+A8w6nfIPzUn2PcbHkZG0e5cXcRhbWlkMV1bxgeDmgMfIc3cseZypInI
	GxfRP5m1Vrhw5UzY0faVPxlMiMgaLAdCJR2D8nYVC0BQWVa6nu+xiUrMlkjGnOfa1IwHU//JqotUg
	MJDUayMyTpIfKJ5QCBFLnbyM9mi2UfbKS66XKAXA4Gicm/SOmudJwS5RowjtRBdPuOWbHITblDckr
	3wzX4AdHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBh8I-0007YO-KQ; Tue, 10 Mar 2020 15:49:26 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBh88-0007XW-4V
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 15:49:17 +0000
Received: by mail-wr1-x443.google.com with SMTP id t11so16542907wrw.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 08:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=JLUdZSd1H1lEETpHvCclAtf9Hxyai7jGSGVa9mBHeW4=;
 b=SXaaUnjufFDt8Mlnfyn9/nZlPn4Sx6yJeTDI9xCvB0eIdKUVY7sYTWP+92HvG9vn6s
 hxMoVzkzmbTNU/nbfIVXiPxyh1TZJEgXBe18cH53Z8C5SRpBpd8VnYKB8hswLRpiAVbx
 siJujdMUqn6EeQV4dClu6RdiAVRMN0A8eMh88=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=JLUdZSd1H1lEETpHvCclAtf9Hxyai7jGSGVa9mBHeW4=;
 b=niL9fgx/OEezwzvQNy8kVvz7SCs+3kuCih+Arnrp3adelJd6/TmKLMOSWHs5arT9TN
 3xlwO+Qvly2pX7lu9eOg2PQ9MvcRii1LzrL2ZnmHnev4LfWWrzmJfGWDWB5cAMM/4k1O
 nAu3cae7Re4lhc5qhLHqxvU7do8TnccPaCNUj7d5j4TWwippvqT/T38lM6EcIIIt3P5X
 w3mKCK+n06QwEUBFkacCz7p2zL+VOzrIUc19G89tBgCAhFSAh0lhWDdTKOLMScScCYC8
 bh4WWAUMlxnDeMnh0i3O7X0Vv+5IESSSg7sGa92oeWavcFrek5UHmfEVNyruqpMDs0LT
 sKHw==
X-Gm-Message-State: ANhLgQ2LKcSutC66PxWfADxWsgboN/wChKgh8eypMZmeAJ5CjRp+zgCL
 eRe8qMChfu39TpGsEXJHtmtVMQ==
X-Google-Smtp-Source: ADFU+vv3M5cRnol8JRj1p0ysE6tMfdFNrNvEtcwqdFl+xa2EzKzZTzLC9tOnI+8oafPBbV9yqs7dYg==
X-Received: by 2002:adf:f70f:: with SMTP id r15mr28468158wrp.269.1583855354940; 
 Tue, 10 Mar 2020 08:49:14 -0700 (PDT)
Received: from [10.136.12.253] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id b187sm1201195wmb.42.2020.03.10.08.49.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 10 Mar 2020 08:49:14 -0700 (PDT)
Subject: Re: [PATCH] ASoC: brcm: Add DSL/PON SoC audio driver
To: Mark Brown <broonie@kernel.org>
References: <20200306222705.13309-1-kevin-ke.li@broadcom.com>
 <20200309123307.GE4101@sirena.org.uk>
 <69138568e9c18afa57d5edba6be9887b@mail.gmail.com>
 <20200309175205.GJ4101@sirena.org.uk>
 <8113837129a1b41aee674c68258cd37f@mail.gmail.com>
 <20200309191813.GA51173@sirena.org.uk>
From: Kevin Li <kevin-ke.li@broadcom.com>
Message-ID: <1165b736-d0fc-1247-6f46-94a51d392532@broadcom.com>
Date: Tue, 10 Mar 2020 08:49:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <20200309191813.GA51173@sirena.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_084916_183319_E5B49617 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Scott Branden <sbranden@broadcom.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, bcm-kernel-feedback-list@broadcom.com,
 Stephen Boyd <swboyd@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> This is not how any of this is supposed to work, it's unlikely to work
> well with other devices.  If the device supports both master and slave
> operation then you should let the machine driver pick if the SoC or the
> CODEC is master via set_fmt(), randomly varying this at runtime is not
> going to be helpful.

Maybe the name "master/slave" is confusing, these names come from internal
chip signals and do not represent the state of the i2s bus master. Our SoC
supports only master mode in the i2s bus. The Rx and Tx block each have an
independent bit to indicate if it is generating the clock for the i2s bus.
The i2s bus clocks need to be generated from either the Rx block or the Tx
block, but not both.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
