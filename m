Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82500C2DDA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 09:14:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7eEqGlvndtIWWcUrlZ//8mcwlfQ0IpNNLLDceHdpTYg=; b=I1wvhSFRlwY6pB
	L1xP0empJwh1GKDZx+kqHLReeIDEb6peqFIONah80UPhuaHzvrGKcEAYrWe+tw5PuWeCpYRjZzUeV
	bD5nOq4ZSnx3GZdlgsQXfpS6Nj7awzDKIuvME2IGkVks9RJs105rSMogLYtCqDAPxqQGqBVW20f25
	c+hb7HLf7FvVqgx7Qj+up5C1vULPSZQYFxh+MJyyuME+A7ar+FD2oD/5pz0QPMLqh76KaSV6TFelQ
	GNVw2t/krR3YBHkt8uu+962VQ49emsDXApzeZbVWti6ozogfEiuodZGl7T3YdkXd+wga+eRUj6msI
	2OQ1M83CC2WIi+Z+l3Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFCMW-0008Fw-El; Tue, 01 Oct 2019 07:14:20 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFCMO-0008FM-VZ
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 07:14:14 +0000
Received: by mail-ed1-x544.google.com with SMTP id t3so10868004edw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 00:14:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bwuxhK8pLgzEi3vq6nPQfEZgwMQjgjmnoZM5l4ff64I=;
 b=qAsRCUuop6orrR8PCjfCtzO8BzwKjKldDOgzkvmUzyyyYRvRKl5FzLzbY6kZRH9osI
 So1+3Y7XKDC/dUCE2vXP1h+D7n7WJBtK7RCae4nUBNx/fa7DPuYnHz35uVD/BcvvWMuJ
 2HY6YR5MVrcUDMNTczQcrmnGuryZJiDn5yiTk1Xc0J0HzNMYJ4JjiDjHDtgNhllzNc/z
 Yp+LNMaAFDQvO5XjbmScgW88SJMuGkNJWp+jqO6pOqiuROD95AiuMRWqPGWOih+1lGh8
 YSJ9Br76vFvfn9dd4h6SCQu3KfzT5coaWOWClC6bg8rGXQ2X1sVsEymGQqPMrZ3XnRRs
 U8MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bwuxhK8pLgzEi3vq6nPQfEZgwMQjgjmnoZM5l4ff64I=;
 b=BbOyTdvNAiAw0XRqgYN5FuF5X/IhBnw/Px/ZqVygxaOIuohNhozkIzFViizuFyhyBm
 OiM6AtOz1DnbdqKYLQyot9sHLbKFYt9lSdPOATi1ZCeCKfw5mawSORRLB8ZZadMuWPGW
 Ry1q9zrcFqj6uzDgoSkaoqsFPTVr65iVeFn9cSMp90bAgE/EV1jXJLFGD4e7o3nWmGyZ
 7/kK8POYTiZ3GhdiW/o1k65dl1umdFkpqkqhuvblTCrznZAnm5YcAxqnIkIvaYPmLVwp
 vZBirvJOkSY9m6VbWvtKxEb4Hk3wjZeHDDMADTri9YeuNZaYK14hktyGzfAh7SSDPtxI
 hErA==
X-Gm-Message-State: APjAAAWTsSXdjZCqtRa9l7tIVr88RO8XdaM+vYVIr4+OCt+0g0yk/ric
 eTD/OA43RDzLMm+rcPLk1zTLoyLAnoWAsa5OLjE=
X-Google-Smtp-Source: APXvYqw1X+p3g+t10/TYEmimQRfFetqurCjtlh5OifiOfd4PWqUdxFi8T6ZGi2H53p4/GC5Fw4U6770UryJOqSCvz2w=
X-Received: by 2002:a17:906:6084:: with SMTP id
 t4mr22166232ejj.164.1569914050880; 
 Tue, 01 Oct 2019 00:14:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190920164249.6935-1-ja.kaisrlik@gmail.com>
 <20190929101624.GA94161@MBP.local>
In-Reply-To: <20190929101624.GA94161@MBP.local>
From: Jan Kaisrlik <ja.kaisrlik@gmail.com>
Date: Tue, 1 Oct 2019 09:13:59 +0200
Message-ID: <CAPnxhu63mAv4be6=duPbkSJ-7BFSJN0jPVun+JQbquK-8aP4bw@mail.gmail.com>
Subject: Re: [PATCH] arm64: update Kconfig to better handle CMDLINE
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_001413_038214_3071EE69 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ja.kaisrlik[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Catalin,

sorry, I did not notice the similar patch already exists.

On Sun, Sep 29, 2019 at 12:16 PM Catalin Marinas
<catalin.marinas@arm.com> wrote:
>
> On Fri, Sep 20, 2019 at 06:42:49PM +0200, ja.kaisrlik@gmail.com wrote:
> > Added a menu to choose how to CMDLINE will be handled. Config strings
> > were copied from arm32 port.
>
> This was proposed before but we rejected it. Do you have a good reason,
> other than arm32 having it?
>
> https://patchwork.kernel.org/patch/9459341/

I have a similar reason like Geoff from the mentioned patch. The main
difference is I'm not able to modify kernel arguments in the
bootloader. Also, I observe that Risc-v also adopt this patch and
maybe others can find it useful as well.

Let me know if you would like to improve it.

Best regards,
Jan Kaisrlik

>
> --
> Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
