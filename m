Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BA157C6F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 08:50:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bce12I2dAO+I1QJr6bj+8IhKIt4fgc5DXGw4aj0zY/c=; b=u8B0HaH7ec5Ejq
	xaFzeNVGv2Bmmn17t4fvTXwfAFNCMbw8wASi17fRuk23qDUP7Zjj5SQEQOgOs8/zbiPdAoNIZAY0v
	fzpz6b6uSle2aLejO5PBPg9lnuEEr53bv4MosQzZft1iw98ufX0aBxxoyXiMy/5YunaI7JzCizN1Y
	nidgVCSyurW9Td06MqmJTtJipsosSib48kwFpvDRHfGwwMDHZlAuAP8CB371FS3hx/HGx6KSrPsnX
	3ncO6a2j+KZVAlfhlh4Z6D6G9/IiBoBibp3u9cVRLDOFSn2hRYG8+rfXRO9r7zYDL/4q/uPJ0+4Xg
	JrQyeh41Bi7fEsQlRBvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOEQ-0003pK-4b; Thu, 27 Jun 2019 06:50:06 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO8Q-0006KM-4l
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 06:43:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yOkS90FW9m9qlm3iIe4o+JWVUiJoQWOdV+pN3v1fwq0=; b=Xf5OZBRvHA+Ccz0WcCxDeGlJG
 Ty770jc/96oLp/zdYMIx+ktVJUMm/NN75nvC54dlPee7Kw33KQy7cZHmgNQYP31wqT2ivyax4TrYu
 nDI9mGdkJgYNQcl7ZJo/QKLIsGN3/a8ivepkWRgvgrVf3Fgr4q9AOeQNc65Y/pdm0SfQfsXocj9Jm
 TL8T7KBIel4s7u//fKytdVrMaXYMYJI1kVX1ZqQjVi1A9Kqnkung+qE2SVsqYWwgHQmp4b22irYjK
 ustYZNpziRW9YXcRPct0G1IxTV4alOL9ywxvYrc0aPE7jygCAM9WwAv4wZeWQ+PgDZsMuSXJ1Texe
 Kaz0DhU1Q==;
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgKFU-0005vs-0i
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 02:34:56 +0000
Received: by mail-lj1-x241.google.com with SMTP id h10so675761ljg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 19:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=yOkS90FW9m9qlm3iIe4o+JWVUiJoQWOdV+pN3v1fwq0=;
 b=02QsbCBlA8GNeuMaJBwsbEV2R6pe97/6uMS0F3Yprjxq6bC0/OQ/JNV6Ro+POVzUQm
 QtDJvRPFy/uJtB2214wa4MRddsoIU6izreBbqNvF9gXi6vDZfGVI00oPX0iDubtdZFsK
 Z1cNUx5VbKMD6NPgJmOBzEB6u678aeNpXbIpu2IXRlUOyBkABEGIH3J5h+w3WyoA4rPy
 n5LhBkNIPHE8ls3WdyofuWR8PJyCM1lR7H2nQgYd23fj0s7omlh5FVCwp0sSbJB0VwhS
 2ItnQbm6lj5cu9esJhTcSMAtzengSHyTRq/h9676pmJfBUS/CuPwKCPnkWQQu54oEBqt
 zkVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yOkS90FW9m9qlm3iIe4o+JWVUiJoQWOdV+pN3v1fwq0=;
 b=Oy5A7+69RSmwXhgw+gNaeb5Fcw5mNYPXdKuLRBSRn60yy9pWzIGFLmnAFkzVXkeFqE
 09/qG/B25tPGDe0QqUhJ4QXGiJZI276IdRyZXdztLpm/w27rLtMLUjy/DQ6CpICHdtez
 nMB3bnnKPJmL1mlmQ52Bl0OYbu0sgOx1Wf1x5Pt1kaPZeUHr36wuAGh8E3aZAuNqGIJr
 mnTwQQkdI4JuolvBPfPmolm9fdIsIMwy2TdCnbQ+g2G/0RvGojRfSC75RW/Oqg8iouVO
 vDEKh8feGq8FfgOkj+a8STQXLUK9+zXKhXv+Lo0eaiwMOulb7cYWyUrJpKbcHptK3qKh
 yJ4A==
X-Gm-Message-State: APjAAAXRhUgt9gf8wPXunBbsREOIQ21Cu7JYe4SegZB4cttJvnOh2qlz
 KMP6UZcrds3jT0ODjRZgziFwiA==
X-Google-Smtp-Source: APXvYqwZ4VGmnVUqovZXVKOQ+atp4tjYSsaXrcOjTRbWuBvLrRSQBn+AF+1AqmO9JXLGINO0/BwJWw==
X-Received: by 2002:a2e:89d0:: with SMTP id c16mr825416ljk.219.1561602832318; 
 Wed, 26 Jun 2019 19:33:52 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id y5sm108248ljj.5.2019.06.26.19.33.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 26 Jun 2019 19:33:51 -0700 (PDT)
Date: Wed, 26 Jun 2019 19:22:36 -0700
From: Olof Johansson <olof@lixom.net>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [GIT PULL] arm64: dts: uniphier: UniPhier DT updates for v5.3
Message-ID: <20190627022236.qi2fp6thvkoewwir@localhost>
References: <CAK7LNAQKmSUkXtJOOcr1q8b_yTU_NRcgCvDAo8aZ+CkOXGTWNA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNAQKmSUkXtJOOcr1q8b_yTU_NRcgCvDAo8aZ+CkOXGTWNA@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 masahiroy@kernel.org, arm-soc <arm@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 12:21:42AM +0900, Masahiro Yamada wrote:
> Hi Arnd, Olof,
> 
> Please pull UniPhier DT updates (64bit) for the v5.3 MW.
> 
> Thanks.
> 
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-uniphier.git
> tags/uniphier-dt64-v5.3
> 
> for you to fetch changes up to aa38571246c6ac279ebebd141157297bcb959d76:
> 
>   arm64: dts: uniphier: add reserved-memory for secure memory
> (2019-06-26 00:08:47 +0900)
> 
> ----------------------------------------------------------------
> UniPhier ARM64 SoC DT updates for v5.3
> 
> - Migrate to the new binding for the Denali NAND controller
> 
> - Use reserved-memory node instead of /memreserve/ for the
>   secure memory area

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
