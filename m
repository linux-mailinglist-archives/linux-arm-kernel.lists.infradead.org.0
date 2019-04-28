Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 463ABB67C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:20:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gYL/hmgu/SII/R2rOV7ZoxuwFvLRPKl0MHROh6odc8I=; b=B/AEZvl9oG9Yd+
	a0fgci//HPTP8h42v8hizf8QGgfqElhURWKRD3TcFG4IczU4HV+5WIzqlDee/wmSzQe6TICWTbBUE
	629UIZhU52WvuXDZuxh4eZgAOlsu24uTX+lkJS79emI+aNoSPibN/39oe6BXVJLBtnixP+SEPy2ND
	qLtv3O3IaCmBBTyhMHVunkzQalMfJKppW+Kz3JTx6DPmjEWiCpVm9mmgKwiY2RVpemQtI+K15MoML
	FCvmUX0vsjXlVHD++K41Xj+WfCv32e815qWNxHDBWnR+LNJgJevO4CjtxXyZG7yiQdf9kDfbJwnKs
	3wfdZ0xsDQvCDi9wWZ+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqHS-00084u-Do; Sun, 28 Apr 2019 20:20:10 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqGT-0007Bi-Vp
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:19:13 +0000
Received: by mail-lj1-x243.google.com with SMTP id t10so6424330ljg.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:19:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=i2toEMewsEMaHaLntOy85W6bAwXZHCjqEObm3jmcEHc=;
 b=YC37tAHDWBaDcJBRtp7LY9mB0b/tW5cYxvTNn139Ju97gj8+YbZBzBzg8243kB5ePd
 sXmm0/2NsE/xvOlAs5JjIGWAgMR11sLSxWDUEzUiID9f3NwDCAHAbCGTqxogCzjGTSLl
 cnCKjpFjKQhFU5LMatiT9Rf/dtfIQ1/N+biFtksGl0IrW1zwn+gxWKL4xtN9ruwdWV9e
 57g0Y8VN6f8mm4DKHojPXLMSeahOqDugr77dyiPzDZBIDn8PZ7SGJO88pBa/PUt0ni5D
 7G5FiyozoY235Mlsl9FLveMkzKMWBy9cPVJUuRZ7F/KOAcvIWNF+iAp1XO+04moAYIES
 oLkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=i2toEMewsEMaHaLntOy85W6bAwXZHCjqEObm3jmcEHc=;
 b=HYygcWBCfHhe89oVskv42NdPlbYrXS9ElcaD51ljaV66ZrNKY5yiXtoULku+uBz3h6
 RtFXl3cbmBz36MUM9aiI9bNi8J8UZRn2o4QN2ehOa/RCWX5QABZPIV+RrDyHk8Deykuf
 lFDXmqXijylcDewRQBbrBVEGm5gnDhtLiLf0WzVQKV2Grw05sSPlHEsfyZGv3sUSsnpi
 F+wacZ/2fDOJ3RNIbuW07DVFM0MIiL02xn3tarqWmd8GstBvv6Z47NY9tCe/nr/0po9v
 0hshH9pYIUIZoI14ACrsRgoZQ3099tattPwdtEIAVRjld+mao6GP2aQjEJjCW7kv4mic
 199g==
X-Gm-Message-State: APjAAAVQgbBfTU7Es7UPCscXNyGZyCDqRUOe+ohTK4LRbpx5bKptyefs
 Ybz3PQQ0HymD0/o2E8jA2hcW1Q==
X-Google-Smtp-Source: APXvYqydSMP6rNKI/oypKGGjP2STtKrIIWEqQI2PK2aIJKGEP7TZ6SkKHrmbTiOocOKLe840E37SJw==
X-Received: by 2002:a2e:84ce:: with SMTP id q14mr19610123ljh.80.1556482748431; 
 Sun, 28 Apr 2019 13:19:08 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id p19sm6942975lfc.48.2019.04.28.13.19.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:19:07 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:14:42 -0700
From: Olof Johansson <olof@lixom.net>
To: Kevin Hilman <khilman@baylibre.com>
Subject: Re: [GIT PULL] arm64: dts: Amlogic updates for v5.2
Message-ID: <20190428191442.w2gd7dsi5cx7p7km@localhost>
References: <7hr2apv06l.fsf@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7hr2apv06l.fsf@baylibre.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_131910_460261_1185A1EB 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
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
Cc: linux-amlogic@lists.infradead.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 29, 2019 at 02:29:54PM -0700, Kevin Hilman wrote:
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git tags/amlogic-dt64
> 
> for you to fetch changes up to e2cffeb398f4830b004774444809ee256b9bc653:
> 
>   arm64: dts: meson-g12a: Add CMA reserved memory (2019-03-29 14:19:42 -0700)
> 
> ----------------------------------------------------------------
> arm64: dts: Amlogic updates for v5.2
> 
> Highlights
> - new board: SEI Robotics 510, based on S905X2 SoC (G12A)
> - enable more periphearls for S905X2 based boards

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
