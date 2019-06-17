Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 651B74847A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 15:50:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VW7cYkLkueBnFpC2i4z27kBw6rbF/eoPLZu37shJN6A=; b=Y8x
	Ob5HQBT/DyhL5sGFQ0mEAUAD1KJ0HSDa31plmqLwy7o2BTs3yNV/BT8Td8VQEPvddIZM+w8nDPL07
	ASPZjTQGH79QIeXSZBSDMoguLVyJ8wELjR74PefbxIY/QpnO2A/sawF1iyK36VAIYbipcioKxD9IF
	m3IfOMuKlyseKGgKWNpM+d521lJy69zolrjlIH5bXOv61CPIjzY0RxGeoUkjXKekiA2CKWXGBBltP
	28YSmYn5UEhn4pLQvQKm0TvFy5x8QhpZYokpvRllN9axfHaLd0uxA+IPlk+RKCZA8yhX3p9tUEgVf
	4iE3YfbqXk3Tmki5CyRHMW2NDs3kFVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcs1h-0000TL-4C; Mon, 17 Jun 2019 13:50:25 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcs12-0000SC-JI
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 13:49:46 +0000
Received: by mail-ua1-x941.google.com with SMTP id o19so3440719uap.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 06:49:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=gAJ7/EU7d8odPoO9pWe4aDd9tc+dB/pfZ4tLxqLbXJg=;
 b=dID/X0G/KZCIk0PgUq85ATt2ShNl8nWB/JSZ2MU+e/u9iYRUuDlEZ+OmnlGCUG6Cq9
 xUuixKV5I3YGnHJ18kmDfhsJIuPDCaoZuZ+41VZtWguUQuzKtF9fSgOt3qIK9n+TuQBA
 hW2pYqBzh2YEf+qn9jJXdJ6dMlIehWdFFuMfWYfApTI84C47l3xuqFroUgR/PwJLqU3e
 o2//ueyeebjPI6oD1edVHqQubwI9jFslJVkivA6yy7IfJx+wzD/J/Es5IXq0ZOBOofQE
 ZKoZXKstVTeKKhyRgo3zwb0a5lxWjZt2CIpUOMhuCA8THO1RCF4k1v+f/6RuOALNzZeH
 zg0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=gAJ7/EU7d8odPoO9pWe4aDd9tc+dB/pfZ4tLxqLbXJg=;
 b=TmGdQqVyVrH0xwwys/xl92ZguRWU3aXaHhbC6PoLzkPpDeKVjwfBRJsYQFRNlVr250
 AZKQlHlXogBV76dO2VvBigVWIqAtD4Hq4gi3NVGbUnKZXqJ3Mt+y5MsBhNx5rgpJWQPj
 /S/rb9k/h8D8vSudPKKR5J/wIz70IW8Ay3DG19jtWhF7J//VxkqOkaSraMDW0hJhJY3E
 0wyP9AK0t7qrMvI9n17ZGa6JiRnE1raNj12YvaPg2LPEHKxqjz4siHjX8QU9z8xYAgZ6
 npJuM1Fb+sdQY/zISN4DQdcP/1fqDk0bM840Cfmad0HQ/F0xHLDByBeHcJaMGeuW6PTI
 TR5g==
X-Gm-Message-State: APjAAAUmWOSAy+5YbWXtvgoYGvTodKFLHKolvAu4lEIwfREza7dZWSvw
 1KsgS7v4YA61ski+3/3D9Ygvv1mJtJiYsLejDmE=
X-Google-Smtp-Source: APXvYqw4lxNSbbGaEiZRZPbsUHGxGYb5IJWBMmyaQeJGDHMhb/Zi1+yaYBKQIdcSBRrrpLlKATPxaL8tMoEsEBHYy3g=
X-Received: by 2002:ab0:4521:: with SMTP id r30mr31857546uar.70.1560779378220; 
 Mon, 17 Jun 2019 06:49:38 -0700 (PDT)
MIME-Version: 1.0
From: Pintu Agarwal <pintu.ping@gmail.com>
Date: Mon, 17 Jun 2019 19:19:27 +0530
Message-ID: <CAOuPNLiBA9VjEoG_D2y2O5mKiqsDNW1VZXOk1eWXpGY+h86acg@mail.gmail.com>
Subject: [IMX] [DRM]: suspend/resume support
To: open list <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org, 
 Kernelnewbies <kernelnewbies@kernelnewbies.org>, linux-pm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_064944_878314_8E23394F 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pintu.ping[at]gmail.com)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi All,

I am trying to implement suspend/resume functionality to to imx-hdmi driver:
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/drivers/gpu/drm/imx/dw_hdmi-imx.c?h=v4.9.181

So, I need some help about this.
I logged the request in imx community, but it seems they are not responding.
Firstly I expect nxp community members to support (if anybody here).
Otherwise, I guess, people who are experts here and have prior
experience in implementing suspend/resume for their drivers, should be
able to give me some guidance.

Currently, I am trying to understand what needs to be taken care
during suspend/resume.
With some reference, I figured out that hdmi power off/on needs to be
done during suspend/resume.
But after resume, system is hanging.
It seems like vblank events are not getting triggered after the resume.
May be irq remains disabled after resume, I need to figure out some
way to enable the all the irqs again.

Even if I try to install hdmi driver as a dynamic loadable module,
still I get the same issue.

So, I wonder, what is the right way to handle suspend/resume for any driver.
Some clue/reference should help me to keep going...


Regards,
Pintu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
