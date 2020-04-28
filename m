Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 565DF1BB507
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 06:17:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SeqfRRq841/MlWxzZOwCZp99wR0BjmFpcYp2FjKFsR8=; b=a/EBNfjuKnYIpB
	UJ9i3937qGKqUb5XOdymU3PaRV/Eg9t4Kjg3bAsvZccs1z/X4qJBwciP9jzWAYXU733eJ1NpfpIji
	PjKc1PqqVpUAhtYrFTTy8LbTOXJAxvpc7+w6gR2ebeFE+/xES6HycyLSM5pe6JAeiVtDuZsv9tTby
	+Is2hWdhRElw2WlpVAZR6CF6Cte015/3t4MgKPol7husWozYgsMdxhthTL2+HIdXiP1mpRI14hNNZ
	D6LxeBcpJe+ne/+apPQxv3fYjsn1yBwwwyrG6lAIzRWKnHAcypzlA7L1iNRP9rOTZ0eJUI5zSBt1C
	izunLGi5zrsgexwJGxxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTHft-0008L7-Ul; Tue, 28 Apr 2020 04:16:49 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTHfm-0008KQ-M9
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 04:16:44 +0000
Received: by mail-pj1-x1043.google.com with SMTP id a31so563569pje.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 21:16:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zcgS21itL78D0fddZORH8FPW/WTSqwnt4JvHvdMFx7M=;
 b=ufQlri23Hn5ru/QSTcDsigIaefd5C8Jo5G5DkNvJRr4nSLBva7mhaxr6KHKCH3qeTx
 /Bc79XJKqxu+ihH4ya/wTgZdOnZywUMQ1JP7qtjss5SWsvyAH7Su9xWwd49NLWmbd4hS
 5qxZMnb5z7V+twQp5imipUmU2MwThi/RgGG4LLd33jcXNPiI3vy1tgAjd6etrFwyYWwF
 P/AKKwj6SjqwCUMWQctIla27pnCn3KxHWUkk7i8YF/UbPyEBHrHtiKng33yKzHJuHywy
 nb3BfPt+Z520YNe/axeSo8pf1paBOXEafEZqqdtGssUlVesX3uOgJ+u4mn66VmcGpgHA
 pJfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zcgS21itL78D0fddZORH8FPW/WTSqwnt4JvHvdMFx7M=;
 b=reTONvbvpxDy5v9+51FMWVCdI2UbFfIqtZFTegXQawgBSC+FAjiIRrtnYjcU0uua5J
 33ooF4DnuFpKCNpES2/wisvYIDW3bAGkrnSEGkMgHt0Xp2mbsuHuzm/bQHjesUO2vohX
 0DIGdQ6D+M/wSYBeOxUfUNYkf5XXloWpiWSfqT41Yqjzv4cDW/1cPdz74WIGpdzpUKDw
 r1LxzKKY4ce/Hm5evmc8zmMznOMxZQa5PZeC44j5QfLTRivBwghGLiLj+vciWgnSZtON
 S3UpBUYbOn0EdSKSb3eJPNXEMsPqet4preqJg4VB3mUiq/lXcOO0yAipBNclE1U8oILQ
 Q3Ew==
X-Gm-Message-State: AGi0PuaU//dMjuk5nvG1kZJRGay0QN1zCZdvZ9pdtG9HGrL5fbckApjG
 5wFLHz+JFcevRyUTLD4/hgQPzg==
X-Google-Smtp-Source: APiQypLHi61r4xiv8wVJwGtp90je7+VC7t1lXTr4tVyxSHVN84FrrQP9s5jjTw2j/zSh39NDp6sR0A==
X-Received: by 2002:a17:90a:690b:: with SMTP id
 r11mr2630271pjj.119.1588047401459; 
 Mon, 27 Apr 2020 21:16:41 -0700 (PDT)
Received: from localhost ([122.171.118.46])
 by smtp.gmail.com with ESMTPSA id f30sm752667pje.29.2020.04.27.21.16.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 Apr 2020 21:16:40 -0700 (PDT)
Date: Tue, 28 Apr 2020 09:46:36 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Subject: Re: next/master bisection: baseline.dmesg.alert on imx8mn-ddr4-evk
Message-ID: <20200428041636.loakok7yfqg3hcsl@vireshk-i7>
References: <5ea44ff8.1c69fb81.f246c.d02d@mx.google.com>
 <8af4842d-d576-fd6f-ac6b-2ef3482742b7@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8af4842d-d576-fd6f-ac6b-2ef3482742b7@collabora.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_211643_239281_F3912175 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Peng Fan <peng.fan@nxp.com>, linux-pm@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 kernelci@groups.io, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27-04-20, 14:00, Guillaume Tucker wrote:
> Please see the bisection report below about a boot failure.
> 
> Reports aren't automatically sent to the public while we're
> trialing new bisection features on kernelci.org but this one
> looks valid.

@Peng: I have dropped your patch now, please resend it once you have
fixed the issue.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
