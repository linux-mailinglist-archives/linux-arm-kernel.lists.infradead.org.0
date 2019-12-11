Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0A411BC48
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 19:56:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:
	In-Reply-To:Date:To:From:Subject:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BpDMkCmzH34zJFVnS3+Ce4mM+Pbr8NPDw6Iak1UOxuU=; b=b/cG1XXXjUEWCc
	bOiSA2+Y9Zc+Rd2+qDTXeuorN1ZEzSLIP+OG4/iY/TvZ3eUuLdhJmZvH+K4NzSG6n/jvJLjV6nS8H
	rD1RhUBzqOM7fOjfSwSENK56kyQefHWo+lGi2k6Kp5s1UYl1W/x3XM6nuCNrlpqLtPGZSgSzqGM3W
	VD6U2tWlalgMVbZickS3Elg5WZFoi8R+2vANUfjq7XwadKYkUc3nT4frQSZLXMLXCdFFDoDBdHbaA
	5uAnSNPUuhfBCsXtPtKETJyz9XKY2H8HfJ74FQ90ItT6ONNH7a0Z2xRNOUuwldlMoHOEYiUSQcvOC
	oyaO0xoGLiExwQ/IbmKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if7A8-0005J5-VH; Wed, 11 Dec 2019 18:56:40 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if79y-0005Ih-H2
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 18:56:31 +0000
Received: by mail-wr1-x441.google.com with SMTP id t2so25282306wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 10:56:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=message-id:subject:from:reply-to:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9Tz9pIN2heTTfzmNoMIKpO2fPp6d1pAsyI6xzTnA+qI=;
 b=IMZ7lXdPcaddSS42p3tQ9T3A3Ilo5OSdEpFoZds+SEPA6Zjrojzc6LbOTgCv7rh1w+
 qEO44GuqOKkJssd1DvtBVfcsT/XNCU1WOMh/3NACLLjZNclt+mWVm/Qf4RoC4o7hlmHp
 QDatOt+M10o3kL7n1Hhn6ply6OLPIqI6u2lLYA/56AWvOEIAziBqeHKZESObuermyGX9
 18Zx0XTy60zvJr4DbfQK0gLlv7rd1Rx8QIc/ub9zwaK2IIkZOnU1fHRcHwwvyFlvhd7z
 FNU9SSJ85BsJhWoNNWU6om2ZMiF9mLyspN79RFOJmdIZpOwkTgpNUF7wwy6jLo+4yKcZ
 sYTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=9Tz9pIN2heTTfzmNoMIKpO2fPp6d1pAsyI6xzTnA+qI=;
 b=ZdTyiaWBD9zTn5jekywloAcKPCMUtAlzsa/8E6aozkro4G2r3aMZxP0C5LWSnsU1W0
 vS053cuBNWYJxm0Aybx7QoQhW+J1J08WPn8vFGa/Pu2sSOojiD9wLmASuc6WpxP8f2JZ
 VktoYgLS9rq8td9nDjcmPRv+YGqRiM3mQIKghKpbyxOz8dpvnuj0s4p1ogm7JYupU9uv
 rCm/NedUXnOft9DV3mNGiCQ5w3H1wXOx1+k82ueya4d8VtQ/jT1tV5mP/jShmwGlY+9f
 DjvqDnuxSiMHQkk0wDMsLn5Qev+xuEBxY2fgfC78jQCPGfIK7lTHXSRMHqDhHtulr1Jf
 5pEA==
X-Gm-Message-State: APjAAAUOh5x4SkvD/2U+hWFVChWWoDgAhknQN6b1D2pEsI1b1+dSP3lv
 Yvt0ZA/Regx4fTaK2QsaPvE=
X-Google-Smtp-Source: APXvYqzcWWb+dGKAOnXS5ntWbseCwnHKeTnfpps3hlwccdtyqe3xHXISmdPW1AISV1UTvARq5Ja5Hw==
X-Received: by 2002:a5d:494b:: with SMTP id r11mr1460395wrs.184.1576090588522; 
 Wed, 11 Dec 2019 10:56:28 -0800 (PST)
Received: from [192.168.0.52]
 (HSI-KBW-109-192-080-035.hsi6.kabel-badenwuerttemberg.de. [109.192.80.35])
 by smtp.gmail.com with ESMTPSA id a186sm3450785wmd.41.2019.12.11.10.56.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Dec 2019 10:56:27 -0800 (PST)
Message-ID: <1576090586.2695.1.camel@googlemail.com>
Subject: Re: [PATCH v2 4/4] ARM: dts: phycore-imx6: set buck regulator modes
 explicitly
From: Christoph Fritz <chf.fritz@googlemail.com>
To: Shawn Guo <shawnguo@kernel.org>
Date: Wed, 11 Dec 2019 19:56:26 +0100
In-Reply-To: <20191204125336.GM3365@dragon>
References: <1573652416-9848-1-git-send-email-chf.fritz@googlemail.com>
 <1573652416-9848-5-git-send-email-chf.fritz@googlemail.com>
 <AM5PR1001MB099480739860863EB08EA73280760@AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM>
 <1574973044.2362.11.camel@googlemail.com> <20191204125336.GM3365@dragon>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_105630_599588_4B21B703 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chf.fritz[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reply-To: chf.fritz@googlemail.com
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Support Opensource <Support.Opensource@diasemi.com>,
 Fabio Estevam <festevam@gmail.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 Lee Jones <lee.jones@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-12-04 at 20:53 +0800, Shawn Guo wrote:
> On Thu, Nov 28, 2019 at 09:30:44PM +0100, Christoph Fritz wrote:
> > Hi Shawn,
> > 
> >  any chance to get this patch queued for the upcoming kernel?
> 
> Sorry, no.  I need to wait for DA9063_BUCK_MODE_SYNC landing on 5.5-rc1,
> and then apply this DTS patch.


DA9063_BUCK_MODE_SYNC is now available in 5.5-rc1, could you queue this
patch now?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
