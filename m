Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E17A611C0AA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 00:38:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:MIME-Version:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rt6nfovidsxQEguuldU1FBAcJmp52Uz6v//8B4eF53w=; b=jg2Pa0Cj3XnpHPJpP8Qr2sJJXI
	DPRoQt28IKA4tUOU3JbUQosC23KZwdMz+PSxVSrqjIqNj0xLsHgH9kRdHecbigrMQM8npepoJuoBA
	PvsqjPJdkhNx6Lw0eDnBpeg0xcklbkVVaVuAhtBbOL0B49qN5OQfE1qoxYVtYuGxYlxXsdE6w3GJO
	zJ0lt7fU4PgiCBV2SUIKUNIb4HreNbAj841Pb+Aey5UK3df21mbU2LuO2gDP2hu9m4g3OBhmqH7Xv
	+b5szZZqG7TPgH2NRXw5+GvOW2cCVtRij9URHZ8TjKUWUvinM27U45JFYTMFpTMT2Ic36UhBMyqUn
	Z1qcdxBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifBZE-00044G-7v; Wed, 11 Dec 2019 23:38:52 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifBZ2-000437-0g; Wed, 11 Dec 2019 23:38:41 +0000
Received: by mail-wr1-x42b.google.com with SMTP id c9so571292wrw.8;
 Wed, 11 Dec 2019 15:38:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:user-agent
 :content-transfer-encoding;
 bh=9MD2iuL/4WQUUIETBvkMoKCxMANv9+K7ltNUru8sZLQ=;
 b=Za9dk0f3+8Oo2BcaPZmBbpc29b3C6CmCFARBm9fTHh/QLUWgUu5TSJr9ppy8bkCdrc
 H/Zs90vGg4yF2K3w5woCtLhBCGBREAC1ocKIG3+pB+wiIO4NxrOHH3iI6/38Dd0vbjMg
 qFTUiuois9HPXxl9PR6eLbt6Lk8Bi9eEli3Rdl8mq/mzwsvpdHLVpxgdV4O5587xza97
 ydALyXp3GgqPyRbvcu8+UuPLpE8ZG9qw5YFuoj3sesJJk3j3EoMXB6+mSPzTfzmY0ZcY
 7KFxamKx4iTGmrzz8dSXEFpas10CjMjE6bX/g7Nlz2sMXrNJOXZOt+Ujtfcfm/v1JW6k
 3Qcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :user-agent:content-transfer-encoding;
 bh=9MD2iuL/4WQUUIETBvkMoKCxMANv9+K7ltNUru8sZLQ=;
 b=Mvhq/SOEgjs18vhiR5EbnIeEJ506Lu8dC02+rsct7v60OH2eitfDNBz4r/uwTO1Wzl
 pPC/0DVXCHE3SUyeTkDb44XY0bz/LhBaqVOXeUMAqPIDMySH1IJalttYbGvIN8GU3ul5
 seOIIYtRTohgHjV9leVV0Bg6kBmYjAMotzuOYxu1xbXGEeLiNPn6U/bHbM6/MnOFpf9c
 to9Svctf0aD8iNMnTyUASYF2IG5ilNL17VkZrLN/P7Du9ZPWCHkKoNqnv2BH1a2cU4id
 sqePQh3KsIIbfLBA17GgPYBGGRlrv/Dj9NQG38C3qR+RcWhZEpxh+184HbfUwBEyMfff
 VctA==
X-Gm-Message-State: APjAAAWuTLav7d2GjpmhCLFnid6DuZSd10vw6xQEmqGldHQnJxy4t7cH
 bXm7uMkaChhdD1rTraGiaE4=
X-Google-Smtp-Source: APXvYqyt9+nph0QrBPM/FnhfUGZMJLtmYaY8jJjnZzNW2cdfqWXBK8OyEytjvDss5jLs0ZDLutaJ+A==
X-Received: by 2002:a5d:68cf:: with SMTP id p15mr2640601wrw.31.1576107518523; 
 Wed, 11 Dec 2019 15:38:38 -0800 (PST)
Received: from localhost ([5.59.90.131])
 by smtp.gmail.com with ESMTPSA id w20sm3995604wmk.34.2019.12.11.15.38.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 15:38:37 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>,
 "\"Rafael J. Wysocki\"" <rafael.j.wysocki@intel.com>
Subject: [REGRESSION] PCI v5.5-rc1 breaks google kevin
Date: Thu, 12 Dec 2019 00:38:35 +0100
MIME-Version: 1.0
Message-ID: <58ce5534-64bd-4b4b-bd60-ed4e0c71b20f@gmail.com>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_153840_082646_6678CB76 
X-CRM114-Status: UNSURE (   6.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vicencb[at]gmail.com)
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Frederick Lawler <fred@fredlawl.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Andrew Murray <andrew.murray@arm.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 =?iso-8859-1?Q?=22Stefan_M=E4tje=22?= <stefan.maetje@esd.eu>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
since v5.5-rc1 the google kevin chromebook does not boot.
Git bisect reports 
5e0c21c75e8c PCI/ASPM: Remove pcie_aspm_enabled() unnecessary locking
as the first bad commit.

In order to revert it from v5.5-rc1 i had to also revert some dependencies:
5e0c21c75e8c08375a69710527e4a921b897cb7e
aff5d0552da4055da3faa27ee4252e48bb1f5821
35efea32b26f9aacc99bf07e0d2cdfba2028b099
687aaf386aeb551130f31705ce40d1341047a936
72ea91afbfb08619696ccde610ee4d0d29cf4a1d
87e90283c94c76ee11d379ab5a0973382bbd0baf
After reverting all of this, still no luck.
So, either the results of git bisect are not to be trusted, or
there are more bad commits.

By "does not boot" i mean that the display fails to start and
the display is the only output device, so debugging is quite difficult.

v5.5-rc1 as is (reverting no commits at all) works fine when disabling PCI:
# CONFIG_PCI is not set

Regards,
  Vicente.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
