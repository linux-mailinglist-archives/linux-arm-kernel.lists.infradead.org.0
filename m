Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64EF117D438
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 15:38:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oPfpPsc0AG+8HhEUEPnVRSY9p0h5Epi0qVDlm/cVn2s=; b=DgVSS9aoF/rtNB
	b+5Sq7k0lxtT1n3e8KjXIFYLqBdDK1otvQKKJlcG11c42yp10Qet0Y4aQfFm+jYTDZobAb1EPqEZk
	88WZsgliMECDY+gAoMlufUm2XlhvBjiaukLqwgwCjAsPUvSx0LK0dtE1rUtdOh828uEkZWWOtp+jG
	OKJuT1upteGYu8aPYZoDVAAtQDQ5pSWLf0YWq+WGHSx1gpu1njmwD44UJz4LVZIWsDX/zZL0j14Xu
	+O8AWxwCXEfj4m8PfudNSqIr+U4soy3QnWJ+SYBUhL5cddojcakPzG7akZSGUiPxdEPNiAO5Bs+VA
	xmUX/gqnTEzyQ2W/A5rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAx49-0006Rw-6v; Sun, 08 Mar 2020 14:38:05 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAx43-0006Rc-1N
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 14:38:00 +0000
Received: by mail-pj1-x1042.google.com with SMTP id l8so3223191pjy.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 08 Mar 2020 07:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZYVFbkhMFh7Q0f7ZMrKM6r5jxZ50xPHAjFHMzZBJVLE=;
 b=FAWBuuJyJnb0NCGICYm+pWXGjnZH+yeaOcMfWKB33vWBCmIWDEXSk9ZV9oviWiIHev
 uWiszCglTPEw97Qoi0L3k5uowJ2QnSFDJchAilvgfhbBCFqICYrNLnchO04qBWor27ch
 /r8fo+YrsbBBJDvSxiTHpPmwJijqeIUR9HnfCwLI56UF1SKj2NuzIZR5iCrrpASqoj1a
 844O81CTkii6fjudlJ/e4POiXsWIH8pM8gx4N8SWx5zsVoycacTHGDZ7FMUxtLzgbBgB
 rTJHsuRfdCOrtwHLq9sGrSTRE8VAU0mvBCJH6pYsHvVk9+lJgiSU1fu9S2pig/QslAJp
 pmZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZYVFbkhMFh7Q0f7ZMrKM6r5jxZ50xPHAjFHMzZBJVLE=;
 b=qQByeIno2q8f4IANwLhSnPsvrg8hR+K7bzJR677H32ZQECzKDMqtZCzNyu+No5vkoE
 rrvaznWmvrMXCeCzeF3hpg05H33Ew1C/bub2h2pIM6Ho41EVXNcSQFS4zFkQtSLBcz7X
 PwLiDIFMfebGfJMjwLhAjA328wL9akeaSQkqfddlc084Vhv4GMQvbfSm2h/d0CJG+ROc
 2BCwk67ffckDi/0WKPVAx/422r/j9Q8Gu5BgX4PPxLhpN6rD6laCOFmPeIWsVJohoWOI
 oA7SmSmgpwd2DEKUXnTO0TNDHVApOx7uFeGQkhZvWMF9uiAxWzQcGyc3LgpQHupZCgRZ
 FA+Q==
X-Gm-Message-State: ANhLgQ3RTCAoEtE3kOICCMDECQ4u5V17j1z7E00ci0qaBXn7TTNPDT/D
 JI0c1i7VLX62BjhuljBstlo=
X-Google-Smtp-Source: ADFU+vvRLMf3D//8srvzeibpXcqRHedhPTmb4KyO5c15Zeig8uYs4qGmosI/bcR7bBGqVCCqgF+5pg==
X-Received: by 2002:a17:90a:950e:: with SMTP id
 t14mr11640629pjo.123.1583678277934; 
 Sun, 08 Mar 2020 07:37:57 -0700 (PDT)
Received: from localhost ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id g18sm42475905pfi.80.2020.03.08.07.37.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 08 Mar 2020 07:37:57 -0700 (PDT)
Date: Sun, 8 Mar 2020 20:07:55 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH v3] ARM: orion: replace setup_irq() by request_irq()
Message-ID: <20200308143755.GC6903@afzalpc>
References: <20200301122330.4296-1-afzal.mohd.ma@gmail.com>
 <20200301154435.GJ6305@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200301154435.GJ6305@lunn.ch>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_073759_107011_ED49F389 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jason Cooper <jason@lakedaemon.net>, Viresh Kumar <viresh.kumar@linaro.org>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew, Jason, Sebastian, Gregory,

Please let me know the way upstream for this patch

On Sun, Mar 01, 2020 at 04:44:35PM +0100, Andrew Lunn wrote:

> Reviewed-by: Andrew Lunn <andrew@lunn.ch>

Thanks Andrew

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
