Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5FFB6A0
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:26:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zadneC1i1ba3MwDQcPV0jcM6YP5ozGKRFDSjlxoTpjY=; b=ZdDeAjvGpP+XT/
	yVV875CLLiRHawhcZcZfcjvSeRm7lk9SEJn1HemlOL4C5EAXS80xnRho/qIFapISPSWXg2JrTU3oE
	uNlNnsQ9bdou62RZHFAMI43y2QZibpC4E5A0UYt03kHx2GCt0m1aP4ELLQFXInpKmChBqdSd8BWYb
	CrqtaC7VqM5rU6433sR4RNeUUVU4EZXrnOnE1aG71EMWnbX4fgl3ydrd2SXhj/lacbZGFId5l6l/1
	Wg4rB0l/r5ph+CWd2tV573Ng7f61j1Nmzsp0nvSN7DvbnTbA6q+5wxjQSEjuPOgVlNlmKTncgfJXW
	FdtiTrjToAX7bYkj0KlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqNf-0001M4-0m; Sun, 28 Apr 2019 20:26:35 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqHf-0008Qm-Vf
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:20:25 +0000
Received: by mail-lf1-x143.google.com with SMTP id t30so6224932lfd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:20:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=cWTnjpNDXIxG21QqG2z35Q2q2r2r9i8LQZgduJFscQY=;
 b=CWuyKgHo2jy/Vakiy+Cx5POWDjFJeTzVOur1roOV38agP+CwdmvjNnMXPfL9RjDVm/
 /BRC/J1/uuE14TF3QYyFFOXWrVu1EIWkz7SQdjauMqpM1TlAzhgkr2F5/FjGKhX9i3a4
 o6E8Y2Nd3NTOzZclY+SOSUXF4KOnEHADIvvmZsqKYXw0VDDtSzDiSFT5ox8vPIdTmo/k
 f1pym7IjCns5gzS4/bQYYQh/lhObSlT9HQCFKHpf6mYpyUV6o0Ty+1cIsnXIoVwFi1Pr
 Wz6RQj4IuPcjuu3l8FuvYX3I97hLCpNvFLwaH4pTGVC+RvC0VB4eUlIVWqgRfCX53GKp
 iSqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cWTnjpNDXIxG21QqG2z35Q2q2r2r9i8LQZgduJFscQY=;
 b=R+ALg7KKrwP9bYcnPVzmuePe1B2q49TL+wuefy0q3uNO3p8dgTE7rICtpBQEYzZw+k
 HSSNi8DX0hk3HLCctgpZzS1U8fJWfe8nHAFcWs1E0BhylDHC7QO66gEFtWwN6s6nPvtI
 oVfyRl45XYxtFQJgGBbLo+flgx/Grp2b9BlSnBBRmMjmCRxHyWYc/VBACVTXBh1XEJzp
 qX8aLrJS59u12GXAqldLoZCbA/AJd0/umD7iyuh/3PHqQ9pO9/C9IxT4HxmrWH32idS7
 SCsbGH08vGLfNIQJ+QKG63Inac6hDITZoQkuJCRpfBAhp7URRHNWI2CCQFkZkchLd14x
 G4EA==
X-Gm-Message-State: APjAAAWN0RjYy3CKfT1rbfDOKDgFgUCHTsHRgQG/i+cRGCD1m8H3I5S1
 gApPabEXhl/Uwe4RrcLRiAvLdXHLmdO75g==
X-Google-Smtp-Source: APXvYqxWHxVgaC0RAJvKIiJsr55x/6yIP8HDLCLw6G6+EimhDMkbG5x49bquX2T1jDPKuAblk1K+CQ==
X-Received: by 2002:a19:7702:: with SMTP id s2mr31884530lfc.102.1556482822485; 
 Sun, 28 Apr 2019 13:20:22 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id 63sm6999694lfz.2.2019.04.28.13.20.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:20:18 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:53:36 -0700
From: Olof Johansson <olof@lixom.net>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [GIT PULL] ARM: mvebu: dt for v5.2 (#1)
Message-ID: <20190428195336.2g2hhj4bfw3u7cqw@localhost>
References: <87sgu96t6s.fsf@FE-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87sgu96t6s.fsf@FE-laptop>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_132024_170199_48FDFC9C 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Arnd Bergmann <arnd@arndb.de>, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 23, 2019 at 10:07:23AM +0200, Gregory CLEMENT wrote:
> Hi,
> 
> Here is the first pull request for dt for mvebu for v5.2.
> 
> Gregory
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.infradead.org/linux-mvebu.git tags/mvebu-dt-5.2-1
> 
> for you to fetch changes up to 71f2b9957d983659586308c9f64acc4dc3d22aa2:
> 
>   ARM: dts: armada-38x: add interrupts for watchdog (2019-04-21 18:26:20 +0200)

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
