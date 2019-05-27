Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB61A2AEAA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 08:29:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=j2mZZyI5bU5CShtSLKRh3c7jrGGCOTwdTzfsWI7Qv4U=; b=iSncm3RmqJpPCi
	5gGmTpfP+BgFjhrhZoT1Cr85XY3LYo7cBt7c4DdupRB67JIlOMRxc+7kSAWfzsClxY4PB284CqKtS
	KtGaBbzciF/VscDoaCzGrVP8Wv3bbApgMlpfNGWHcVfSVmaZF0UmvXYGhrsTLTFIvU7UT3hlUW/k+
	kQOETQuakETvzbH/X1SsLtDoX26m8jLOA/O6Z2kgOyY+h8dgyvFAbgSzI1AC/QSSznrZmPNovP6MT
	/50G86v9HxKdEr41ShRrLQxI7DsgZNgcljQ4vmTGY2uO0fBiBukeQYKqCBlFB8TRNWL2RNuOZGBqP
	9hTURy2ZCmpKkTvALg1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV988-0006Lw-TY; Mon, 27 May 2019 06:29:08 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV97z-0006JW-DV
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 06:29:01 +0000
Received: by mail-lf1-x141.google.com with SMTP id n22so3441450lfe.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 23:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=fhnrVHSqGHbJn50Q25d4WsQAAx6rVOjhczZqwBqVKog=;
 b=pE0CcdpSiWxDa4r3DIH1/vqQglpPwJ4pwb9GFET5EkR/KlJXyf/IoRFTicPVJDMs6a
 MOZRO9IkJJKeRRusALXnXtB6JGhKfyjcldxrBKSBzaemGgCMT1FUUdH1M9AIFjHACNEa
 CiGET7Vp8JlUTBFo5aOGzbMWEuOK/VxS5Aes3gOBbl+DxSjk2W1mH3w8r200WDnN0LJ2
 2TTKa5l1w+q6I1KDTZtsuDAd2LGl/h62PhoRaNlCngasFv+71BL0VurTmke/TzUZRj2X
 ti4KO2Tgl2CfkzGjfv1vz8CBmLhKQIQ43k3qr4pcZT/JvUgLHljmzRosYxrnX0LYfl/w
 1+1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=fhnrVHSqGHbJn50Q25d4WsQAAx6rVOjhczZqwBqVKog=;
 b=a0CLW9uO/SzKNorcAKsDsvHxmnXIxCMh5Zia9nOBjlHHXicJWuyTmCYRPW90MwEZSH
 V2JpO2RORo8rw/pPZteNWUpjzjqVFkOi8ldmDduYFg0eZ0gEz/AE1JlawTfNSPnaeYS3
 uMdBZLj6Owplh9VuAoVTqbaqqIy51aIWZgT7kNcVn3Z+oJylXXblrrD83Cw15/mUVsGv
 tcgLQQJNNyDbhH1NhYMVhPHYJl6cEIbDNEpSr8702c2Bxx8IwlTsBkhHpCA3PVSPlgIw
 nS4MR108tTGUDPOE2loxgdGFXlVH2zvQZMYABPDsd7vawDbUoF1skvDtUYHG3B4OS9WV
 NRJw==
X-Gm-Message-State: APjAAAVa9TPEnb/ck+etIIhz0MaLTcWf3Lkc6eBjGrrLmY1J+KhuOC8n
 9aGCp69XXNEoZz+VYjIY0peO0A==
X-Google-Smtp-Source: APXvYqy2MmlEnre6mpKekjSY8Fh16CLcW6dC3x/vyPe0vo1WwpVUbX5rYj8iUtYqgZ8IXXSGrxPGFA==
X-Received: by 2002:a19:740e:: with SMTP id v14mr52733363lfe.144.1558938537287; 
 Sun, 26 May 2019 23:28:57 -0700 (PDT)
Received: from jax (h-84-105.A175.priv.bahnhof.se. [79.136.84.105])
 by smtp.gmail.com with ESMTPSA id q124sm2040047ljq.75.2019.05.26.23.28.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 26 May 2019 23:28:56 -0700 (PDT)
Date: Mon, 27 May 2019 08:28:54 +0200
From: Jens Wiklander <jens.wiklander@linaro.org>
To: arm-soc <arm@kernel.org>
Subject: [GIT PULL] tee subsys for v5.3
Message-ID: <20190527062854.GA19419@jax>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_232859_463596_DE7FB1AF 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello arm-soc maintainers,

Please pull this update of MAINTAINERS with a mailing list for TEE subsystem.

Thanks,
Jens

The following changes since commit cd6c84d8f0cdc911df435bb075ba22ce3c605b07:

  Linux 5.2-rc2 (2019-05-26 16:49:19 -0700)

are available in the Git repository at:

  https://git.linaro.org/people/jens.wiklander/linux-tee.git tags/tee-maint-for-5.3

for you to fetch changes up to d7f3f7d847044a111d4abadf9c69aa54d0d05167:

  MAINTAINERS: Add mailing list for the TEE subsystem (2019-05-27 07:59:03 +0200)

----------------------------------------------------------------
Adding mailing list for TEE subsystem

----------------------------------------------------------------
Sumit Garg (1):
      MAINTAINERS: Add mailing list for the TEE subsystem

 MAINTAINERS | 3 +++
 1 file changed, 3 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
