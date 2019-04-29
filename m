Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF84DC66
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 08:57:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WnHHkWBW/SsJsmGJlex6vMmPwgoEXnV34rvHAYmyZd0=; b=Syxqc8PezRhPIM
	Nizgm/5JRa0QNxUSAL21sO7NDhK3NAK9FldzgfJ40k7Ykz/o81tbJULyHpfUVAKrKKYYWyozUMNUP
	c/klwIyI0VWSI7ADD2Dw6YLDPj89OQs7hTNBA5imsLQPDvigyMhmtDvl82xKjw3XscC4MSaV3IGsx
	CDOeHjhCADogaCM0EqGyHWw4PrPCk2APCoqSTqDxKiyJ/bNFyEDh14E+Vu9K++2GquWZQCHMPRj8E
	b34fbRUiDOUDiV78KbkUdUrdbMY4btwwDS6VHPLDeWGJ5F1uuEW73U23Yz2SLq9baVqQvpwQ9EH95
	ZbougK8MX/cwBnXfMAUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0Du-0006qr-Cu; Mon, 29 Apr 2019 06:57:10 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0CO-00052J-Fo
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:55:37 +0000
Received: by mail-lf1-x141.google.com with SMTP id o16so7076497lfl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:55:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=tg2QhzysPawtaVaS+SiUDWjFx6SYj9BSpSs31eTAE2c=;
 b=BLVIVFVXSPUgFtHyCT3roAl5jVw6/ImA1PvBZPIbLQVzFxaCs3qMAOKXPZy/KbCG/K
 Re9cP6UA1iRyuCWYoypJzFl+gUmk0GEFiu34NzFP4Jmabtjj2uzZBmn2RiHLsolAy/xe
 sJ+Sd7PFDCBJ4k8T4QoPt45NtzX9MwIJZlinQr9g2SgEs+4uhUyvvagKKsbwWZjwc4aj
 J/3E6UqATVBipE6wT4K9iqP0/dBfxhgg7XHVbE2RWYQP1Cj2K9kYGWh1ufRvGS8qTiRv
 u6jSfDTnwStLJ/PhuFuGSevv8vaWa7eO967BYQmhgmox76TwzrAoCytO9laDgZSWbMTd
 0eew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tg2QhzysPawtaVaS+SiUDWjFx6SYj9BSpSs31eTAE2c=;
 b=ihQ2kD5ZDmvrPaiUUuqDg5nEVQWobK/Qk8W2GX25iclEUgChxs2tUZt0b0CpZuevxL
 IyEPsprIZ4rdoEnOXXHmirpIrMWlCBs5cdYIZbDfMBqbdTecJolMFTr0PxyHN8BhgXGs
 TU5DRZ60VIilc5Sw1v7ZNojHnh+tATgXpbcET4pIO63Lz/s/ivbPgV+M12xi1v2vpXK8
 plVqK7y9verRYTXP9pWKf1N4ELvcLIg+GMsqD8nS6Nuz3iWsax6SlzWwhLayVK65AkYZ
 bl+LnK7JMwfNTpEiDJSvy4MWLyQUKyoQ3ThG4+wtlMwOUSWeXr7WhaGJt15zcepPcr1R
 TEtg==
X-Gm-Message-State: APjAAAV4NAczc6NR5cx29OiSFBnFEoZQxMZMNN/z6GWXyC+47nTGMbkO
 wKXdF3Rh7W3ZUzDyTIvgakOfFg==
X-Google-Smtp-Source: APXvYqwZVQgW/qlbTSEFnnI/yi6z+7SyOjmNrN/PRvuQVJUgkX1zvZc/kbxmWdHvyDhb41zTwpZVdA==
X-Received: by 2002:a19:f50f:: with SMTP id j15mr32581433lfb.135.1556520934966; 
 Sun, 28 Apr 2019 23:55:34 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id g8sm7286474lfg.4.2019.04.28.23.55.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 23:55:33 -0700 (PDT)
Date: Sun, 28 Apr 2019 23:11:34 -0700
From: Olof Johansson <olof@lixom.net>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [GIT PULL] firmware: arm_scmi: fixes/cleanup for v5.2
Message-ID: <20190429061134.pcmtgrpfpt2p2bkv@localhost>
References: <20190416142422.GC24669@e107155-lin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190416142422.GC24669@e107155-lin>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235536_523335_461028F9 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 ARM SoC Team <arm@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 ALKML <linux-arm-kernel@lists.infradead.org>,
 Kevin Hilman <khilman@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 16, 2019 at 03:24:22PM +0100, Sudeep Holla wrote:
> Hi ARM SoC Team,
> 
> Please pull !
> 
> Regards,
> Sudeep
> 
> --
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git tags/scmi-fixes-5.2
> 
> for you to fetch changes up to d9350f21e5fe2614e1f78ef20c3a3e83c4a36391:
> 
>   firmware: arm_scmi: replace of_match_device->data with of_device_get_match_data() (2019-04-12 18:11:18 +0100)
> 
> ----------------------------------------------------------------
> ARM SCMI fixes/cleanup for v5.2
> 
> 1. Fix for of_node reference leak in scmi_mailbox_check by passing
>    NULL argument to of_parse_phandle_with_args instead of dummy argument
> 
> 2. Cleanup of_match_device->data NULL pointer handling using
>    of_device_get_match_data() helper

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
