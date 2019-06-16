Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3581F476BF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Jun 2019 22:33:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=usQCwhcLuLK2Z8ob60bQou/HB6msp88/9MIw0vlGxeo=; b=dMx0oElpGzCQTx
	Vg/y+Uq126sP8rbQm38U/6CkQjWWtU0CYvje4vP3U3uxiL/9x9XSY6ARS9ZhuojnP5YZ3CNke/AtF
	fEp66DczhYKRBLHG3LbT4yyU+h9BqZAcUJeAQr3OMzfdcWslSL4poeAbKpmw9NZxqdTGb7ROlt9Jb
	HSH/5HFwf89jyaTMS3NAH6XlOVYQ9UTFo3HckXjgOJOSH59rUmFcdI2GIUeQcA96qvLF18uvhWHRO
	X4Xoq/trGVqexRWpH2SCUW1bGDjy7Kapsi/EMwxm5zGg8Az+cA1xEJMUAZLXKc/ssiUA4qR2NKUbH
	JP11IXyxA+DEVZrMO9fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcbq0-0000HJ-4z; Sun, 16 Jun 2019 20:33:16 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcbpm-0000Gs-Nk
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Jun 2019 20:33:03 +0000
Received: by mail-io1-xd43.google.com with SMTP id k8so16973684iot.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Jun 2019 13:33:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=knrC9t60TI3A/3PJB0YePBsjPEkcwcAoM3FPlcuFSpE=;
 b=jB7Yrv7Rn1/kSz1TcqVn6c+SbuXtpzGhoeS7K/+likGrf3jf62JTnmsVBqSlV5c0Px
 oIPojxzg1j1Ksg2dSJtBnztm9joYZboMmCsRGobs0BT8Pr7SuZt5Gxt2CTz4eVmjyugF
 GeGccIy+NJJClg6jXxL0xNOz8qRjwTmdknyQwqhbpUb+xKQXLsQf878/SIaLyOqUl3UY
 q1XzUII9UrjhrgzdIhjxV78jSO6nK3w+dm4eDuHZFcY0E12evtHEMecWMmXVwDUJWRD+
 dUp1RWY9wUZvlTBeDZDwBoXX19Kk4EDPYAtoyU7b1rg13TGg7idPBxrzKdfRm+JkBI/S
 HzMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=knrC9t60TI3A/3PJB0YePBsjPEkcwcAoM3FPlcuFSpE=;
 b=uNa2V6+e+VFfykoMXzXzZMSUu5K9mcHWZqhIGaHbpOOoMcNXkISrCYdGleA2TujswM
 +W4uumlEAtMYXoueKxNBZMonc/XZyjSIjW1tM1uj2W49WslolzRuf+IL7inGjrBcwn5A
 ikNPldrZpwCuKfp30ThMTCFwdCfnKlaPpVy1efWoYLrztIL78dpaJwtWws5Nu2cv5kk3
 X2OO5U0qNWhYFS3dRFdFEMwAie8s6IrvZ+5GKn+LHt/VxxvNQoCvgJNnoiW/1tI6sVgK
 YQ5lg8TkDnwP9joT5X1ur9PcXOUc5Ar/yjqn9GUJOEaxoHbd0lqXV/PHExqkKHGxUjB1
 vxUA==
X-Gm-Message-State: APjAAAUSSEhUAyPExWlDF96zf6jm6e4yk5XXcvCgVvzt9PxV9llINFgN
 E4M90maYPFTIxBBdMkEc4XBxYj90lSS1vgHG7024TA==
X-Google-Smtp-Source: APXvYqy2o72Bfvl3QK8lNfmx52cJThtkJ3FnBlLW4JwS5jWvn7QFduZlAY78TVuVaSfk6SFt2yEb/lLfUsZ4+38N6GA=
X-Received: by 2002:a6b:7608:: with SMTP id g8mr10852860iom.207.1560717182104; 
 Sun, 16 Jun 2019 13:33:02 -0700 (PDT)
MIME-Version: 1.0
References: <87imt8pq6c.fsf@FE-laptop>
In-Reply-To: <87imt8pq6c.fsf@FE-laptop>
From: Olof Johansson <olof@lixom.net>
Date: Sun, 16 Jun 2019 13:32:51 -0700
Message-ID: <CAOesGMjzB+vVcP4ANxB2sazGdmmphPorsnks+GQBm+T2BnqJyA@mail.gmail.com>
Subject: Re: [GIT PULL] ARM: mvebu: fixes for v5.2 (#1)
To: Gregory CLEMENT <gregory.clement@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_133302_777591_EBF6F345 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Arnd Bergmann <arnd@arndb.de>, ARM-SoC Maintainers <arm@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 12:44 AM Gregory CLEMENT
<gregory.clement@bootlin.com> wrote:
>
> Hi,
>
> Here is the first pull request for fixes for mvebu for v5.2.
>
> Gregory
>
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
>
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
>
> are available in the Git repository at:
>
>   git://git.infradead.org/linux-mvebu.git tags/mvebu-fixes-5.2-1
>
> for you to fetch changes up to cc538ca4308372e81b824be08561c466b1d73b72:
>
>   ARM: mvebu_v7_defconfig: fix Ethernet on Clearfog (2019-06-12 10:36:36 +0200)


Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
