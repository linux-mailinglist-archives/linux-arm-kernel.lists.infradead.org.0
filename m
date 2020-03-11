Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 351E71823CD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 22:24:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SZohrniUlata8Oqp9Uu3NFWxQdbfW21xkJC9OZfmC+0=; b=JmemrcBSVJX4Yh3NOhlb030nyM
	Gmkwn7Uu6x+X8H8tMcKfRrySPcgB0z9gOd7XQA8qAhIh8APYNu/8xK2QvtPcZhaTiwV9SRRvOHBXc
	jnN3d8tjC62Kpzz0SDBvDdJLVY1vkljbR27YMLcjKWVjPqLbhFjMBWhrZ5pyeWxr5lQMTeG3Kq1zs
	qeaQrFsAlmR4GD2aOpNp+GWDycsKh1ax51yBuv+6wJutrOriw0dnyE/6lnl34z+5XBtg/z8tPKgrC
	gilSA8d/hn0dBgPiIUwjlLRiAqbS3m9a5zLAtnHopSxB86hNwwVrQb0UKJsN/frWlBUrNflSlSpUu
	QuEHmRsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC8pr-00082i-Kk; Wed, 11 Mar 2020 21:24:15 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC8pk-00082K-Ik; Wed, 11 Mar 2020 21:24:09 +0000
Received: by mail-wr1-x443.google.com with SMTP id a25so4633221wrd.0;
 Wed, 11 Mar 2020 14:24:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=fuyIUQ7b5CBLSZ8E0QJGAyWVlbMJzgaunPSPgIViZwk=;
 b=uoO6oVmZhvWxJWeOAuN27RkZ8JajNoW3OSeQqgmgf+5HU/hC0/ku1AZ2Svf3gScae3
 wpwfXGX0G4yNg2krZ2dRWnHF5IqZOxyBNVDYlZ1l08JxLa3a6Fm6UEn2VP7pxh/VbNxg
 N7p7HZabg6+wW+NTCbkdYaJ0txe+RB3FDQJUnhh91XP/Sv3tKe8FQqBe5zvZDc8qLLf/
 hdWTfdxA6gslW2U2WdZSW866CQ3/T6uQPIDF2gtYSjoAbaxCWdWNF78Qkt9nCpvTUgPz
 22ZOgs9ZOKsWn8MlZQ5HE6WNoroDDwbYA4tpsQkSx+tdl95+EbT8whx21NA5/cwdzhA5
 1+AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=fuyIUQ7b5CBLSZ8E0QJGAyWVlbMJzgaunPSPgIViZwk=;
 b=iJ09wQgbENhlxbVSxy7PyqDtiy5uQMIFdhXrJDIGiGUSpdbXm5umk3XVofJmgty8Zn
 KFjKn/YucKnxyjh4pMS1hSDI12eNHN14TDjXh2dE0zBf2jpPasGeyanr59ism29c4Oc2
 +3topHvjWHRYBxibi1ExKCCiYbksZ+uiVmab/eIDDGR9zJx7lG/Syc48/jqkLy+NRidJ
 fZPJcXyt80XKC/czj23D9X8lS5FycQ2HBVzT07PWmJTMuux9r998b2Fe6IB9No73QxzI
 Qp+vJx9qVvlLAo9NVhuOTyw+CMKfbh1KGdBGy7jx9L43SiAj2OpFDJBcUw6A9C2dJZpr
 WSOQ==
X-Gm-Message-State: ANhLgQ30+SdRmRsvJN0bIAEx+Dm2mRiv6Df6PTa/+tKf6c+c6Vs8LaYA
 KzQV9gIUlJuwNyI4Jbge4qU=
X-Google-Smtp-Source: ADFU+vuYd5Vi6zFvxP8WvwEA4pSeyb50560+pVCwg9vjetJLFM971+3tweYm9Zyh/wW8Sf20AjkZhw==
X-Received: by 2002:a5d:4683:: with SMTP id u3mr6742903wrq.251.1583961846711; 
 Wed, 11 Mar 2020 14:24:06 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id p8sm3023577wrw.19.2020.03.11.14.24.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 14:24:05 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com, nick.hudson@gmx.co.uk,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: bcm2835-rpi-zero-w: Add missing pinctrl name
Date: Wed, 11 Mar 2020 14:24:02 -0700
Message-Id: <20200311212402.9934-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200310182537.8156-1-nick.hudson@gmx.co.uk>
References: <20200310182537.8156-1-nick.hudson@gmx.co.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_142408_615099_5F9FB55F 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nick Hudson <skrll@netbsd.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 10 Mar 2020 18:25:37 +0000, nick.hudson@gmx.co.uk wrote:
> From: Nick Hudson <nick.hudson@gmx.co.uk>
> 
> Define the sdhci pinctrl state as "default" so it gets applied
> correctly and to match all other RPis.
> 
> Fixes: 2c7c040c73e9 ("ARM: dts: bcm2835: Add Raspberry Pi Zero W")
> 
> Signed-off-by: Nick Hudson <skrll@netbsd.org>
> ---

Applied to devicetree/fixes, thanks!
--
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
