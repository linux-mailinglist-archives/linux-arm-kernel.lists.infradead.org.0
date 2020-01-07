Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B79133078
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 21:15:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TkOw/pTJBl29+xb6voCrvxJkj1gMMlJx9snff+LZHcI=; b=tLyU93h4MeA4pe
	uor1s66FNTPThCPeGYPaKWUi2kDXuWw7nM0i5Cg0N0y7i0rXThGJeEGDM7IMCul6/IVYi0laSm2uf
	448VyjRane46wyiQRE6q8JVaDyiQyCJ/qQE3Sa4hkCUYvmIkgnsPUtRKKZnKXZIfWz69T/H1y6566
	YqlIm/74h/UqoccqUBSzzOxd+rWQ2Z2ztsJePpHcNqjh9Xc0ONJdIltDzSNvyC8Zvx1GIxQprYzgW
	yK0otD/q7npeS5AaVQYLBoUmctp0q19RKJAThGRBSrNaZMr/3MIaID5uVxCM+NeiWIsFvCvz1g9Qs
	KxPaKNGGuyulwK+w7AZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iovGY-0003Df-BS; Tue, 07 Jan 2020 20:15:50 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iovG5-0002zM-0j
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 20:15:22 +0000
Received: by mail-ed1-f66.google.com with SMTP id b8so664884edx.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 12:15:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wGDNH8G9OjiK3AAd62wDz3jw6gfDHFXfcH+EuJ758p0=;
 b=OBp+1LP98LJHCDfX8zO7vr+Vcu/d65vhZO5QPReQXEg6yoqRl3VpQBbrj+I6SSFsE5
 6NNRpVPdj1FTRMrlZT+dbxr1au/LlC9QMXTXWtoA87ERuOdcCceYZjiZdWPWQYcYYZs4
 zdPnCeped50wJ6Aezdjauv0+prxfxN8YKbeJoMLEKkhX4ZKOE87zlLSx1/29b2AJzK/5
 ENvquYUhpDzilHK9xhMh/hz0E+LaamF+5CAIikmgLZFdJshDMaDIxZW7eEVoDY0PkcPo
 ff6KnXkBK2TpJ02WdSPTHvMBYhqAYyvDItqT2iRK1dduKeJAssaTWij3h+iaqrEOeph7
 axzw==
X-Gm-Message-State: APjAAAVewUKRZdURXkY7oZAfgcikyIJJP+JYxWOcMJtmoH6mjyX1xQw7
 wpuCuoeJ3BQkQy7sZ/Ef0AFxUHHd
X-Google-Smtp-Source: APXvYqzGqpZQgkR0GVpjbilKXfSk0cxuxc92sd9DXO3QEbOkgclXcOqlmAIgeOzvOw+eK95fAnrkuQ==
X-Received: by 2002:aa7:cd52:: with SMTP id v18mr1732386edw.205.1578428118823; 
 Tue, 07 Jan 2020 12:15:18 -0800 (PST)
Received: from kozik-book ([194.230.155.149])
 by smtp.googlemail.com with ESMTPSA id b13sm11469ejl.5.2020.01.07.12.15.17
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 Jan 2020 12:15:18 -0800 (PST)
Date: Tue, 7 Jan 2020 21:15:15 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 09/20] memory: samsung: Rename Exynos to lowercase
Message-ID: <20200107201515.GE8636@kozik-book>
References: <20200104152107.11407-1-krzk@kernel.org>
 <20200104152107.11407-10-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200104152107.11407-10-krzk@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_121521_096999_4B613584 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-samsung-soc@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jan 04, 2020 at 04:20:56PM +0100, Krzysztof Kozlowski wrote:
> Fix up inconsistent usage of upper and lowercase letters in "Exynos"
> name.
> 
> "EXYNOS" is not an abbreviation but a regular trademarked name.
> Therefore it should be written with lowercase letters starting with
> capital letter.
> 
> The lowercase "Exynos" name is promoted by its manufacturer Samsung
> Electronics Co., Ltd., in advertisement materials and on website.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  drivers/memory/samsung/Kconfig       | 2 +-
>  drivers/memory/samsung/exynos-srom.c | 2 +-

Applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
