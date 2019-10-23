Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C55EE1802
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 12:31:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VTMX0b3Roe5rfvoguju9AaKV1Kx2clsvt0OpfKgQhVU=; b=YAnZAfs78/dKtw
	D4alBxTAPgYWvQBTheYfP8YV6WqL76CpUXXuaCwwGmqbaMqtbl1aIB5Vlypu7hQup/ebEnoQAEfiF
	w57EbeAk8PGW5mpGgMBtZAEZ0WTF9uvkxd8+5mFbHKdBeyVMNP90WGNO5klxt/tJxvNWZAW0kCrtx
	0/5/kPqWh+RaI0kv/9vfFQjyu81CYR5DpjIj4kYMe+LW5R8wzaF4oCQh5mZ17V/N7dJu08qsfLF+5
	ykpua/WjbAQscvM1iJMqIRYNe+ndo09qhE2SwsdjtEfsuL1LlJQB/WDL5HpjVP8r7YOlADuKcXZZ8
	xpcD35ChpQA8w0sAImCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNDvc-0008Dk-6H; Wed, 23 Oct 2019 10:31:44 +0000
Received: from mout.web.de ([212.227.17.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNDvR-0008DJ-G5
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 10:31:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1571826670;
 bh=TBKaH/WTggCJ0JE7OqUnPO+kS13o5Y8S8iworyM0TB0=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=Sef5foiW4fzdZhcId56WhScrA494Rx0CPQwRlbutOJbSxWpC5TfX5MYUXFkaN/mtg
 EgeHH5TMaAd+uw9r8hwVtqOH/lX7pCp9ugnnRLZ5uCnDWfuOkidsNk2k+5ITukE/RM
 LtFjyQafnJt/akVR5xg6og7MIo6H8Ej7VoiwhOpQ=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.135.140.249]) by smtp.web.de (mrweb101
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0Leca2-1hen0y2Kti-00qOuZ; Wed, 23
 Oct 2019 12:31:10 +0200
Subject: Re: [PATCH] clocksource/drivers: Fix error handling in
 ttc_setup_clocksource
To: Navid Emamdoost <navid.emamdoost@gmail.com>,
 Michal Simek <michal.simek@xilinx.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-arm-kernel@lists.infradead.org
References: <2a6cdb63-397b-280a-7379-740e8f43ddf6@xilinx.com>
 <20191023044737.2824-1-navid.emamdoost@gmail.com>
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <9065be0d-c169-ecf7-9ea3-1bcde10fe3ab@web.de>
Date: Wed, 23 Oct 2019 12:31:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20191023044737.2824-1-navid.emamdoost@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:vsqxiGcZhUMJTI5cenbB/uAR/hkJEQaxmCx+pVAFg2K5+sEcNAa
 zMB+JR+U8QHqpNtc1mDyQKptazsdKyrmlOXUjFlL2a0SasBrUohA4H6/0Y9MBpCVuDLqklD
 lW897m+e6x08DkflM9qqJc/cU8FKE1LYMh0K2iDBKbhJCj3QSsZwyVDM5HIHK138V6rOZ4I
 3CoCDCFEVIenoYsaJ2YvA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9DzCy9yXzSM=:eGQc01l1OFykSGs0NVdg8N
 JiMmNZ+pWXlRxi+Ydivdwc0ru4I8NcWW1ao+8NYUW63/RPHWoOpMnj6ZxFOA20MlwKc3U5DTE
 qp92b7NuSfxJKgr5yuJTYW3/bb3pgIzZvzfP1gT0cAZdaXN1wocxzt8AGzFS0EHpCfNpfWi7L
 0RnfraVzi/0WjwBZSotXspDWIjSMe+3oSY7vfYzzhIrUP/LmKWXwLJJFI2M3B/GhXRYBqfXuJ
 YEheLZ8aFppAPV/Mkr0Yrle8lGLOIAsMCBdOmtpPXaPiKtLof8GT0+0dfykNC6AT2axaq65jM
 wY44yE4BjcqWnawg0Hbclpx4HWcUfDkd8ot/0/4uS5NL8s9p7KrywxhPmG68g+g8uOHlo5Foi
 nwyombvwNu7psirF8/ybRn/0J3im3TBdr6SMgQ7+AIZxb/2gP0v+jnpS1ixdGQ+qLq9AY/myd
 u/c+CYjJPOMNXe33U2c3OeS8oDXK6bWnh+gGlDYZgJbk/RCkPCeTAyvX5wMO+fuA+fMj8y2ut
 BjhEYYK5iioauUVVIsqhvP3/1GRzL9YThJAZanh88CPCSj8uSmV4wOSIA5eEkep5KuAEge5Iu
 GZZjVCrloY/wiSJp7gZLhJUmbZNREny3bM2EIIpQ+u6f9DFOaat6yr1qdY9nZCemEYwB7V7Kn
 VHrfS/oT58oyLV64xTSfnlP18mtWlUVmFVtICNlDlPmEWSapkmGhHd0mFJQ7Pk1Whb7Y49vDw
 iDcg3CQ7UpEeWZV7sh5tVwiddwpQbxbjFauPoi2tuU9DN27/YleB/7H9jF+74ZDq/8lcqWHZI
 7iW65cjFaGo7tei2l0o61PwiFZVL/dM84IDNhZ8j3L6BGZjjT3HE8lyJR4be15c1MgwdH8Nyf
 vzEzgs7VYEORCRX8g5D3T8bg2cqJ2YyJ3v6F//DBiWYulSO+mvgMWLb36dKlpUo5JTKchtDQI
 Hbpck6IHzYS3BQoaI0oPMh8vksP9tOBvSyUuCJOupBdkkv00UfuxTGxAQSy+OGbXwNHzUefX4
 XLual9u0VFkbV+JaR4P3AQA6bsCoNQhbn4BKIVF+SaG6Jfu6QMKxjOZauZMjopDxOiEJMks3B
 SNIb+fcUteNrGqpLjm/Jt3dGpG7D4bfKk0cDT5EzvA3SGjmDLj+OKNGYz347BI78gShcoTgvY
 dapbE2XIqXz/MNuMbg/lOmM6W9uWCPSvmEE5R1YoqQMpTi/ayA62QMO/9PZVg1RBUah61tmkE
 5F/QVffJSnrhGipKY7+2SwelZcBI7Jy0Rm6uvUJt1afSEuY2FMG+uhHkdIu0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_033133_881715_2E91FA50 
X-CRM114-Status: UNSURE (   6.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.11 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kangjie Lu <kjlu@umn.edu>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Navid Emamdoost <emamd001@umn.edu>,
 Stephen McCamant <smccaman@umn.edu>, Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Fixes: e932900a3279 ("arm: zynq: Use standard timer binding")

I find the commit 70504f311d4bd5b6a6d494f50c5ab0bd30fdf75c
("clocksource/drivers/cadence_ttc: Convert init function to return error" from 2016-06-28)
also interesting (besides the contribution from 2013-04-04) for your software update.

Regards,
Markus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
