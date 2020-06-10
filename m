Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B611F5174
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 11:47:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VCQLKsHA6fyYFIzuvWwvZ60lKA7IEMbVXtZfmym3AjE=; b=GncRZ2HQw6cKJo
	4yildrm2WAKpihV/aBD5FgvmXhAwK6gMgQt5aUESS6lvWm4s8RAVbZZ2jrEewV4Vur2iolT+RcKq+
	0k7NfUymwNVdGURZBUCa9NCN8ivTfZN/p7EhZDtv2bQQho5G9KRpbpjUfXwOgHLTTC2Ukfb2Ike7k
	JopPXXMYNHUBYPJnd+SU6zA9guyRc1G1HYGiz2dq9obr7xXS1OMmV3gHw2TtDPMnGgfKlA1fvMwnF
	8I4jj57dljNTU6oZP/kk2FAXqCD8vVjxCqVGlW2XCIJZkaeSN5ueXUQk4GGYWHxREMWiDEwb3UQ9X
	6WatjXDQuu+Tyi2kDhuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jixK1-0004iG-29; Wed, 10 Jun 2020 09:47:01 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jixJs-0004ha-I7
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 09:46:54 +0000
Received: by mail-lj1-x229.google.com with SMTP id y11so1642637ljm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 02:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=veq+9NOWY9jhOHWHfiSDBHJjCR3y8kFCK6ZQ7IkSXyU=;
 b=eocK2D5fg8ysvRo0qAQELuhikgf34yW+RuZF/BmE2TJGjRV13nf2A6HeCRQ7FKHtuV
 EDzYm0aR2R7QwSPASpqa3kqqk7z3M795lh6Sc0eTTAWV6bhE8QwyFwI90ilpCJFDLNmo
 9RDWqA0YMEI35jjTBJZ4R3ptB8+HE2ImnV2X3kB71j9vTfu46Y9wSLBHALV0ZcqyAi1b
 Xz065zwjZ4t0HfcIPOPx5uPrZB5kcfCI899S3wNso0KrO/SEbFORlAcVKQPiUYSmtw10
 gI65A0Y5V0m2FfCdbDp+WkVNAAMC+9pXmSmvDmJlcVgOmWn+o61dioIjkcYQ3JOMCBKQ
 gvUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=veq+9NOWY9jhOHWHfiSDBHJjCR3y8kFCK6ZQ7IkSXyU=;
 b=flTEIZLHT71Mp/QGciDWxdxbjanxgResdNomZhnW6oPLAa+N/kYoiJZ0WuaYv9wzzW
 ITVRddHiYcdtn4cW7wc5aISf2lOYSNPHDzFUMfiIF1m6WAZhY6eLP2xEJ2ho2/Y7u7la
 Zcmg0hMiegdZQEdEcuHD5mcL9Z3ph+tFWxVJpz4wt0I8nsznAxvaNevSmTjlj9CQaav2
 4TJuiw59ovtw/jiPfk3LJT1RcQoZ4Zfq2WL/Tputur48ztmshoqSBJiGQf7UaX2fQw2H
 MToiiclD7Pl9JYW9wjMEZEIkrT2uf/4oBVoSa3DJJCKrrF16emg5fXBcwVASI1gNRy3j
 F8SQ==
X-Gm-Message-State: AOAM531XuSkgJu1t04j1xvD8VlOIYoxLfe/0lNSsJ2ZJRXC9yX6xKK9c
 OK1pwcO9g2T6icayfQvVLOq3kjHZ2xNKaWVEKiW40w==
X-Google-Smtp-Source: ABdhPJx6ZhHz1m36PS68+yVtfRWfuYn7CcqJNRHrV/4hYK/YvqbJYUu3WP3KpaP9b+35/qNyI+xerrZ0ItZHfnFCHbQ=
X-Received: by 2002:a2e:974a:: with SMTP id f10mr1351794ljj.283.1591782410483; 
 Wed, 10 Jun 2020 02:46:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200605224403.181015-1-sebastian.reichel@collabora.com>
 <20200605224403.181015-4-sebastian.reichel@collabora.com>
In-Reply-To: <20200605224403.181015-4-sebastian.reichel@collabora.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 10 Jun 2020 11:46:39 +0200
Message-ID: <CACRpkdazmx7g9_gc4daqivUmM7HpR20k0HVeiGW=PaZVwDq7xQ@mail.gmail.com>
Subject: Re: [PATCHv2 3/6] power: supply: gpio-charger: add
 charge-current-limit feature
To: Sebastian Reichel <sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_024652_600853_BA99D704 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:229 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sebastian Reichel <sre@kernel.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, kernel@collabora.com,
 Robert Jarzmik <robert.jarzmik@free.fr>, Daniel Mack <daniel@zonque.org>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 6, 2020 at 12:44 AM Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:

> Add new charge-current-limit feature to gpio-charger.
>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

That's really neat and useful.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
