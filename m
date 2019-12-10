Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2369D118C3E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 16:14:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PdOX3PhLDJaz0zMzNIycNZc1P1onwzkGYM6aT2W4Ruc=; b=FJgv93rgaD4ZPz
	f503AQHsLrqvGP2pGgnTDVW2U+57hyrKVuTDM5xtXSwf+bq2ACE715GkPQlqAEGm8gQOAGoSzfgiF
	XHFV/ZHtkLIzoH6Dv7Otzt1lOs6OW2LBWYOsqQtECl1YMlGuQ0Md91JhR3uZ70ZnnNeknkNvi7V5J
	R4I/0XxXn//tIzbFGaJPdo8vlGRBqWpNjnV9WM6AnRCtO+yClyLpa6mr0qMiv1zfS8d7vgan25LGB
	PmA3xmpqMq/0N7xyZs5zNqLBhxGrbCsBAMLsunYtTqqVvWAT0N9sotXMyOgUTmzuBV+ysRXmyi8bg
	K+Y7HvceVfoBKst3kC2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iehDC-0001pm-Pp; Tue, 10 Dec 2019 15:14:06 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iehCw-0001pK-8l
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 15:13:51 +0000
Received: by mail-ed1-f67.google.com with SMTP id dc19so16240281edb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 07:13:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+WKlQUPo72dT+6gRaE8wTfxIyY3yTGzZswBT0iRb62I=;
 b=DkvqVzhqO+HK9ajQ6yFTPN0gG0+Qb1MVAVIkAzAWlzyE6CI3uFXMZ0awSJQs255OH7
 pX4c1mZVyhMKKFv2hlRrVhxPm+6SaVFe7uPo/QD5UBlzYc5WeUwYNNc/w643qJBRdmpg
 4Hq+fC/D75x5MoJEXUBAGBXanMQh8UaC50c/CmWZlb6obz5G9G2odEi/DC+t1/LqA/NP
 mdXgEMPAyF41SGhg9jTFreV2Rhi0CV2dGFzxexgv6QumBIxboUe9793O4npLW8g05vI+
 C64tpsdQ4ClIcjf0Krjg57BY9ylCP2MN/jfE6//H9UeVsP7h1soZo07xOc8SwRvdVdft
 0frg==
X-Gm-Message-State: APjAAAW0mFMVmW1ZNdy3/Di+Ksy1WtkmdTGZT+4hgQ+vn3K8WV+CrS7w
 rnKSLMs/lk+q6gvSzCH+kEc=
X-Google-Smtp-Source: APXvYqyHYKpKtamdeJS3QNFEyTBoL2rxQ9sXdvJZCyjpdDzv+arjgS3g0x4xyx8CWZsUYi2fp7VhMQ==
X-Received: by 2002:aa7:d78b:: with SMTP id s11mr40051088edq.240.1575990828937; 
 Tue, 10 Dec 2019 07:13:48 -0800 (PST)
Received: from pi3 ([194.230.155.234])
 by smtp.googlemail.com with ESMTPSA id y17sm70501edq.69.2019.12.10.07.13.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 07:13:48 -0800 (PST)
Date: Tue, 10 Dec 2019 16:13:45 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 10/10] tty: serial: samsung_tty: fix blank line
 checkpatch warning
Message-ID: <20191210151345.GI11222@pi3>
References: <20191210143706.3928480-1-gregkh@linuxfoundation.org>
 <20191210143706.3928480-10-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210143706.3928480-10-gregkh@linuxfoundation.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_071350_334696_26638409 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Shinbeom Choi <sbeom.choi@samsung.com>, Hyunki Koo <kkoos00@naver.com>,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 HYUN-KI KOO <hyunki00.koo@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 03:37:06PM +0100, Greg Kroah-Hartman wrote:
> checkpatch is giving a bunch of:
> 	WARNING: Missing a blank line after declarations
> messages on this file, so fix up all instances of that issue.

I would prefer to squash it with previous. These are not bugs, just
minor coding style violations so there is no point to split it per
patch. Too much churn.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
