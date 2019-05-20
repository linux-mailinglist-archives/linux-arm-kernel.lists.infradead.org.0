Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 535E5243DB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 01:00:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iI+Dcy2YPU4HVWmT/7qNXZgK0r2FEXR1Pu7/tPN26Yo=; b=L9M7eLl0xRNdFL
	cFRT/BwI6jlCmdEhVI2HLxChy6EYrIx14OVQo0/FarOPmwddBKiN4dCMvNN7xDwj2T8CqAN7oSjNo
	Yi/QkJNjTM7gM9dkfjY7CYc68K+bws368IsLPxgRt46qnHT4c5WpBUtTKkOPotAzJ4pUwbAqC622u
	7XEVCF0PMxKgF85JZq/pvwrRXvJbZ8HqwFX7TCLObxPbyNZKQKkr8GLmduKwxY8ta2PEC19XIv04+
	+gkVwSB9x7e5P2FmHAmJntIYrGYzAnJDoHISNdEZtNhpFPoOC7zVDZf/t8RXIgDAeWO741yqC5g/J
	QsTBaGB3MzfJEZlzq0yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSrGp-0002p6-51; Mon, 20 May 2019 23:00:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSrGi-0002oY-HA
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 23:00:33 +0000
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 219BE21479
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 23:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558393229;
 bh=dwYdtJFqgk5WnKGN1vdh3maFVGEpJsAMNi0isL1qAB8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=NmszipmjVLQy7SLs59z9lKtKWq+QtPHVSITYnoLhwAGWqtIXAZCjFd8jEZFwmc93a
 /UTG5ZdSBX1Aerbx4DUCTkBFQz23ty1+z5j5x37XIibSqDE0cMTWgLMuS92PvAlico
 wFVRB81vmtPy2hP91lSkicmIs+ZC07XlgYYOqiiw=
Received: by mail-qt1-f170.google.com with SMTP id y42so18339856qtk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 16:00:29 -0700 (PDT)
X-Gm-Message-State: APjAAAUb/1MSAaFpcKdDLuvolW5MyvpjYaKFMpLoMT17NtpDhQhUcsTU
 pp0HNXKexOeXT2nMqyjvrxwQIg7sgTWrMBWh0Q==
X-Google-Smtp-Source: APXvYqw6CYhSggwUV7gsQLnkXGG6PApsuzJwfZ9MrjtG0br/Nx22pSC3kEjLcum6EYWMFL81vS6NoJzqn+y5HYSvGKA=
X-Received: by 2002:ac8:6b14:: with SMTP id w20mr44046792qts.110.1558393228435; 
 Mon, 20 May 2019 16:00:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190520142330.3556-1-angus@akkea.ca>
 <20190520142330.3556-4-angus@akkea.ca>
In-Reply-To: <20190520142330.3556-4-angus@akkea.ca>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 20 May 2019 18:00:16 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+nEdz-k9MLdVjXR7iC1BSM_93LyhVR3W31tESNSzHwYA@mail.gmail.com>
Message-ID: <CAL_Jsq+nEdz-k9MLdVjXR7iC1BSM_93LyhVR3W31tESNSzHwYA@mail.gmail.com>
Subject: Re: [PATCH v13 3/4] dt-bindings: Add an entry for Purism SPC
To: "Angus Ainslie (Purism)" <angus@akkea.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_160032_584625_F0C176CB 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, angus.ainslie@puri.sm,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 9:23 AM Angus Ainslie (Purism) <angus@akkea.ca> wrote:
>
> Add an entry for Purism, SPC
>
> Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
