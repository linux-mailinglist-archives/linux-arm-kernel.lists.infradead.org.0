Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 523CB14DDF1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 16:34:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+fIzB7oLUZMnErkYg3phQ2U4LYiO+/PNchC6y3akuWw=; b=KnX0N6QQsRVBpy
	Hd961/meKPIREfgb3ZBgFw0QRtUUasw8IDbN1JEDNHhn7BVyQRlznibq/77Hrryp9sQUVHiwHXZ9E
	lp1h0e3s46GrLMMU6lEpkgrKwN6bCIMyDkB2tB9IIG5do+vKa9yGpW5axeu50du0Kn0cPd4uI924i
	Ddy9/eHBc5Wda1BrQhzDiVja39MTlW/R8qaGOGyVPgdLzF0zMONgmSAuapg7KW4PmjuuwsVmgsWej
	SU+Ckm/kM6+mlhhcLcncCx+lY+knyovxaRxNFrreRBnYO+yG6d8PeO3bL4cn8liWY0ijLEDGHaJSY
	SI/R1CPV3kWZMpCECtxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixBq0-0002Kv-Qo; Thu, 30 Jan 2020 15:34:36 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixBpo-0002Jo-NC
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 15:34:25 +0000
Received: by mail-pg1-x541.google.com with SMTP id z124so1814006pgb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Jan 2020 07:34:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=InrNXti2tqCcgdnGdrLOWWm7wwHdQlyKW3JTIC/mJg0=;
 b=QFVo/muvtC0B6YIUO9y0xdoojxpuOFjX+qqo2YlJf53v2Gk6pJQsUNVZ4SXXSbVnnX
 N80G3hHiF4ARB3umz0Wu5SdiQiizhRz9wCUYaN03fP4i0RFEbVMjFXpqQMyMAguWFQit
 EI13GLwLJ/F5/OqFXMvHtZbKSY6gmxuyuacNovVFxahOHVoiVyoSyz2cIsrNG2sAtRD8
 Qpcu2GRpvFh7RuULb82Qc14M6mAM4t7JyT5bsgoC73WGc4g+Rqj2kfpBkd6lemq/7JmG
 44O1Oq7r5/KZhTWjpy7Y5VDqJZuH9yB/BKSlYyNzhhFHZCdEeQrMR38Ru6EEPbQ0ah7p
 aHYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=InrNXti2tqCcgdnGdrLOWWm7wwHdQlyKW3JTIC/mJg0=;
 b=PSAoZ7BivxB3wHefQSGvezfqK7N4eFQJNB2yYB1W7Xh7kweelLPbC0bFZ6wCgAZcbm
 GQIjaLEHCPE/6yWUBK84iBOVgsPD2Dyp8dwr6jEG5bP66oHtiDPfjnbnrp27BkgtyY0l
 tF4RfIKRHCPS1aSFy133tOJTZh38kI3ssfh4nSqWgrHBXIWizZfroe4f2PptFzCTZiWy
 dHUdOWZgvic+nKUEUYPAJxCWe8b/Co2NzXJOj+mSk+iIDvpWUtMTnBGlun8UWtUDEW5e
 SGm54/+cscH1pLorXy9qCwLXCcOc9UkvEmCN2zUts5YuKVKwQAiNkmNMPvx1DzcY4tpk
 rkIg==
X-Gm-Message-State: APjAAAWD1d1JE0vmgshSfjjCph1J8mtzTfMohUSP8XsYfLnBr0BrYWqV
 CBGgUUSoqoZF4mcuoUyq6TRImc2vgnHf4iYoE8U=
X-Google-Smtp-Source: APXvYqxVfCmeNmg1JmwHBQ7U3+tNZs6aDkq/CssViwtzjKsDbuZf7DhdPYWehXmBapOg3jXG2EdG0Z8BxH5TGreo6D0=
X-Received: by 2002:a63:5a23:: with SMTP id o35mr5262942pgb.4.1580398463707;
 Thu, 30 Jan 2020 07:34:23 -0800 (PST)
MIME-Version: 1.0
References: <20200127231208.1443-1-s-anna@ti.com>
In-Reply-To: <20200127231208.1443-1-s-anna@ti.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 30 Jan 2020 17:34:15 +0200
Message-ID: <CAHp75VfaOfBZYjQa960keORW=VjOn2PdwoYpJMG7SsN83daSJg@mail.gmail.com>
Subject: Re: [PATCH v2] mfd: syscon: Use a unique name with regmap_config
To: Suman Anna <s-anna@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_073424_776225_6B2D75DD 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: David Lechner <david@lechnology.com>, Arnd Bergmann <arnd@arndb.de>,
 Tony Lindgren <tony@atomide.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux OMAP Mailing List <linux-omap@vger.kernel.org>,
 Lee Jones <lee.jones@linaro.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 28, 2020 at 1:14 AM Suman Anna <s-anna@ti.com> wrote:
>
> The DT node full name is currently being used in regmap_config
> which in turn is used to create the regmap debugfs directories.
> This name however is not guaranteed to be unique and the regmap
> debugfs registration can fail in the cases where the syscon nodes
> have the same unit-address but are present in different DT node
> hierarchies. Replace this logic using the syscon reg resource
> address instead (inspired from logic used while creating platform
> devices) to ensure a unique name is given for each syscon.

> -       syscon_config.name = of_node_full_name(np);
> +       syscon_config.name = kasprintf(GFP_KERNEL, "%pOFn@%llx", np,
> +                                      (u64)res.start);

Explicit castings in printf() usually tell us that something is not okay.
Yes, for resource_size_t we have %pa.

On top of that, I would rather see %pfwn to avoid modification for
other fwnode types.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
