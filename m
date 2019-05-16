Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE031FE4B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 06:12:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X0vUoldGRwr5snJrrBrE7SP/fq+okwNqi/5yI3Go9rA=; b=H3lQiIjck2N/3J
	pp8UHvOYfg/eF1dHXB8LfHU0MZuzwEyEYF6uAdvFz5CZfYEmI0xA0wJK74XKYQ5kMIZRHU8SRgUqx
	6Vo6U0UZyEPM7qgVFhvtCt3dDoSRm1EHfN9rCCc1deKRHcJmY5Z0UsJO+afC8ID+pLlZxfMr2li7i
	3p/0d2Li3qqo8ieFnutHZe5gHsOtJGGYWCmU7nOO0Mfb6WxZ9yaSgj6EsBPEPvET6o0+x6r/UKRL5
	N07qOq3Yxj/oAqJYSdlL9HF2ie/YOfqL6fLEjXse8tfWFFyaLFD6ER+j2FodiyINte45m+6yNUOba
	yLp/mY/iHbfIUaJb5nVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR7kU-00076L-QK; Thu, 16 May 2019 04:12:06 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR7kM-00075V-Pn
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 04:12:00 +0000
Received: by mail-yw1-xc42.google.com with SMTP id n76so854030ywd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 21:11:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6NdkZ/duDqLu2X8L8Sp9Y1qQjsBGdKP1kR2TopQEGdI=;
 b=h98J4Si4/wykEUWphi4d4zl7MVsiGlxZQ6HVAqIclAJVVNx36TI/Gb1g1PcpNkvsN4
 MxNtkNqR10IHlg2XylQTO3XARn21apQcIPqn51p2b1ajul9hzUVMqFJL2JYPJL6DH8Wa
 DK+93LMNzo9B95rN6fkqxXdEqIiUqN/14UnJaGx8NbzXO87vuLClz7tRB6+n423UqMos
 Lq1eg7agukcKpTHnoE8QlTNbaOd91nwdP0j0dL2O5UVznM0YLWWxsvv1ytI2RqP2k+3i
 seTD0xiJqcQBMdSCj3wWGBGXcMXpROw62l1g1duECrW53ow5iiQjYxoDCWzURfcqKAmj
 u3Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6NdkZ/duDqLu2X8L8Sp9Y1qQjsBGdKP1kR2TopQEGdI=;
 b=bHV/vzTpi/cPBBxNQulGnvsYPK9c7Gbx/z0AJQqPky+rj+nOwKi3hp+UkF/KUv5qYc
 T86WIkoGKBd0cKE5vjEEqAiIesZ/HWQIC3xHR5Bj+CIxSdQikTklnnbqToGqFpr/IEwv
 ybevLGRU0g5sLZJYwPNZ0gChB9Pw4+NIjGZaQ9tjllE/b0aamrj5huf2Ek6xOqyUhmi5
 335kvEltc9aBT2I08NcFhlO/LhMpZpyyTKtrN4S92Hctbwx9DyOUMaln4DxBeKjCz0St
 g0hxvCtUC6Lqq+FwVhM8x8OMZStXYxnjEzBYcWw7QpSgR1PjNc1Jud2qwxT/QcNvOOza
 ljwA==
X-Gm-Message-State: APjAAAUd+13ipCL/4/Wv2XMv1t5ApWYAiJjXksbVosvgHq9Kve3Eb5ko
 R/0W6P6nLUZqQgqFts7X3gwYjg==
X-Google-Smtp-Source: APXvYqztbht9RfzIpZ2Bsj4NurJ8AOAUJ52oxUqsz7FB9PMDuUFaijoDiZw87NThfUjW+P5pLLGLNg==
X-Received: by 2002:a81:241:: with SMTP id 62mr23262278ywc.109.1557979913641; 
 Wed, 15 May 2019 21:11:53 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li483-211.members.linode.com.
 [50.116.44.211])
 by smtp.gmail.com with ESMTPSA id p83sm1647743ywp.36.2019.05.15.21.11.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 May 2019 21:11:52 -0700 (PDT)
Date: Thu, 16 May 2019 12:11:40 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Wanglai Shi <shiwanglai@hisilicon.com>
Subject: Re: [PATCH v4] arm64: dts: hi3660: Add CoreSight support
Message-ID: <20190516041140.GC12557@leoy-ThinkPad-X240s>
References: <1555768835-68555-1-git-send-email-shiwanglai@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1555768835-68555-1-git-send-email-shiwanglai@hisilicon.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_211158_839357_76A36EA9 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 mathieu.poirier@linaro.org, suzuki.poulose@arm.com, suzhuangluan@hisilicon.com,
 linux-kernel@vger.kernel.org, xuwei5@hisilicon.com, robh+dt@kernel.org,
 John Stultz <john.stultz@linaro.org>, linux-arm-kernel@lists.infradead.org,
 mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 20, 2019 at 10:00:35PM +0800, Wanglai Shi wrote:
> This patch adds DT bindings for the CoreSight trace components
> on hi3660, which is used by 96boards Hikey960.
> 
> Signed-off-by: Wanglai Shi <shiwanglai@hisilicon.com>

Hi Wei,

Mathieu and me both have reviewed this patch, could you pick up this
patch?  Thanks a lot!

Leo.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
