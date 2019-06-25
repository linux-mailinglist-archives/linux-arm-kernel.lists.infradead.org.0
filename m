Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 484FA55146
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 16:12:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qBa+pv28tYWMZkaJNWeQ6RZb7nCn2Xb2I5risJBGCPY=; b=JUozDeqTyTgENT
	FAifnuHUPF3FF1zcoXqpC8RRIi3QRYU2Y0tR5jG/TST63bQSyDBkDss6TJCNDppEtQ5ljj92PwlPu
	NTu9Rx7TmVyehQc2lns+e8xoRcIKqMLe0Zi34c0zkMXWU0KFkD4suzrdNyFHZnTKX1XMiCp6X8BnN
	pOADMz/UyqnmtlTvZ37qZBGpeS7G7zXZeAKWj0hBKf1RlLO7bbCr+qiyyINziFWaem2phZGKdSZFb
	LmWqJz0zmemiy/XEQlscwBivPve9YgXtrYsVYXQ9fcSBashMpyxpPz6Dz8kMMC21P22h8Y6y7+KLp
	clOGAT3f9jLppuJH1NcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfmBn-0003gY-Qa; Tue, 25 Jun 2019 14:12:51 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfmBY-0003ec-2m
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 14:12:38 +0000
Received: by mail-pf1-x442.google.com with SMTP id d126so9558844pfd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 07:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=OBwKrFY1D4LOF1Npq2Ns7LAgZ/Aix78Gw6PxZa/+a3U=;
 b=dJT0IR/2tzobuBPy1TiyjO+DHXLlxT9JA+IIkorQZ0t7mRO+tnQAQpYqxOXEQtcJuq
 Rg62vbxjqGnha2P8YTjfywu6SShwDjzlkNMbCjrqIz3I4rvns5nu7dzlj48mXGgz1VeY
 cEOJsqqAIBYTaGAS6SHDbJm5LcgNwBUgJgVbWYmAeoIPx5tiwN1OEJO4Z9fGI7NLJ7ou
 aQuKfOYKyMvoFDPL9DRs+N7oSmiVcHYHwYS5saQEilU06TFdJ545nu/qOILyjlh23Ja9
 2tWA5kgM4leoia+EorOrzqWbtrD9k+p8CxA1pAEoBOJXrTotraUE0WTb0ctf35rYlxkl
 MgLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=OBwKrFY1D4LOF1Npq2Ns7LAgZ/Aix78Gw6PxZa/+a3U=;
 b=Ze9k+qh68bNkfrqigsQH4oTmd2Gz6xCMboKbvW46MHlKyKN92sC3mpzjd4Y5/ueKzT
 zMMLj4HNwScGyZlrLieXJLhnGtoANLvWUwWSZeheWG8NsTHE9h11bMBEQVTphFSLSrww
 ShqCxwPKwwMuS4j4SLcbEfM8CXxOPUoRYvzdbaxcP6BbfPdzQUe33KmudjEvQ0imQCST
 tXsuO6qW3z6TUFMc02n7U2ZuYY2WmQWEkxOhTSw0ZcPFT62SIHO+2Zm2WRkLVir3TQre
 yWIiFMxPSXDNX9tJ2oalOj5EAQGUshTi03Kq9tqekqPz0AipBsKCujYrEhtGdzmfiy2m
 tQ+w==
X-Gm-Message-State: APjAAAX/ewT+0nrOqUZrlV1AsWpB70/qBDSAqrgQlEDWBYwQRAn1rV3y
 l1D4zvQQuUCwDUCYSw77tCf1vylaQNqErg==
X-Google-Smtp-Source: APXvYqzv3TxmWjFdOQXC8vFHDimo2UK7d7xgflxjZGmexCbRONVFSD1NKQEc2bIiggZiKJA5hOALbA==
X-Received: by 2002:a17:90a:26a1:: with SMTP id
 m30mr32832193pje.59.1561471955332; 
 Tue, 25 Jun 2019 07:12:35 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:559b:6f10:667f:4354])
 by smtp.googlemail.com with ESMTPSA id
 h11sm15022678pfn.170.2019.06.25.07.12.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 07:12:34 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL] ARM: dts: Amlogic updates for v5.3
In-Reply-To: <20190625114037.siptjcfkgmm4modi@localhost>
References: <7hd0j8eyew.fsf@baylibre.com>
 <20190625114037.siptjcfkgmm4modi@localhost>
Date: Tue, 25 Jun 2019 07:12:30 -0700
Message-ID: <7hftnxwy7l.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_071236_170402_4BBE70CA 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Olof Johansson <olof@lixom.net> writes:

> On Thu, Jun 20, 2019 at 02:31:51PM -0700, Kevin Hilman wrote:
>> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
>> 
>>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
>> 
>> are available in the git repository at:
>> 
>>   https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git tags/amlogic-dt
>> 
>> for you to fetch changes up to a2c6e82e5341a283b06b04029f952598e445b159:
>> 
>>   ARM: dts: meson: switch to the generic Ethernet PHY reset bindings (2019-06-20 13:58:11 -0700)
>> 
>> ----------------------------------------------------------------
>> ARM: dts: Amlogic updates for v5.3
>> - SPDX updates
>> - switch to generic ethernet PHY reset bindings
>> - add the canvas module
>> - mxiii-plus board: add regulators
>> 
>> ----------------------------------------------------------------
>> Martin Blumenstingl (7):
>>       ARM: dts: meson8: add the canvas module
>>       ARM: dts: meson8m2: update the offset of the canvas module
>>       ARM: dts: meson8b: add the canvas module
>>       ARM: dts: meson8m2: mxiii-plus: rename the DCDC2 regulator
>>       ARM: dts: meson8m2: mxiii-plus: add the supply for the Mali GPU
>>       ARM: dts: meson8b: mxq: improve support for the TRONFY MXQ S805
>>       ARM: dts: meson: switch to the generic Ethernet PHY reset bindings
>> 
>> Neil Armstrong (8):
>>       ARM: dts: meson: update with SPDX Licence identifier
>>       ARM: dts: meson6-atv1200: update with SPDX Licence identifier
>>       ARM: dts: meson6: update with SPDX Licence identifier
>>       ARM: dts: meson8-minix-neo-x8: update with SPDX Licence identifier
>>       ARM: dts: meson8: update with SPDX Licence identifier
>>       ARM: dts: meson8b-mxq: update with SPDX Licence identifier
>>       ARM: dts: meson8b-odroidc1: update with SPDX Licence identifier
>>       ARM: dts: meson8b: update with SPDX Licence identifier
>> 
>>  arch/arm/boot/dts/meson.dtsi              |  44 +-------------------------------------------
>>  arch/arm/boot/dts/meson6-atv1200.dts      |  44 +-------------------------------------------
>>  arch/arm/boot/dts/meson6.dtsi             |  44 +-------------------------------------------
>>  arch/arm/boot/dts/meson8-minix-neo-x8.dts |  39 +--------------------------------------
>>  arch/arm/boot/dts/meson8.dtsi             |  64 +++++++++++++++++++++++----------------------------------------
>>  arch/arm/boot/dts/meson8b-ec100.dts       |   9 +++++----
>>  arch/arm/boot/dts/meson8b-mxq.dts         | 182 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----------------------------------------
>>  arch/arm/boot/dts/meson8b-odroidc1.dts    |  51 ++++++--------------------------------------------
>>  arch/arm/boot/dts/meson8b.dtsi            |  64 +++++++++++++++++++++++----------------------------------------
>>  arch/arm/boot/dts/meson8m2-mxiii-plus.dts |  17 +++++++++++------
>>  arch/arm/boot/dts/meson8m2.dtsi           |  10 ++++++++++
>
> If you redirect your 'git pull-request' to a file, or pipe it through cat, it
> will use 80-char lines instead of whatever your terminal is set to. :)

Hmm, my scripts redirect to a file, and I remember this used to be the
case, but it's doesn't seem to be anymore.  I'm using git v2.11.0

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
