Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC240160F23
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 10:47:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HkItZAGRBONdlLQAlk4Ueycq0ra/QZSAIyGgfEAAqSE=; b=E1iA6uiuON1IHz
	cLKX4UCosVFdSMH80EjzWqHimugxXahhcIuwXnrmAWPTdiw3GTyHRGzWKLnTM0hz4rxGQbknb8jtR
	GR+S/mu19B1B4WzT/rstV232J26eNt5ZTiIk8/S2YChzDguv8LDlnscj83onmaDqKGa78FH2jyVC1
	n4k3qAGxIHq6WDRwct67D7ctwLq2EfGtRX4x+A33Qhr6PPDxU8kt74OOBHBTz7MmX1glPvfW+bei2
	Z5+eTh+os8p+v5Dvw6JS5GdJYxf8wS5UFXnRRRRSPAhtIFDun/yqjEPEzbXqLSBtw3BC/54o0F4tQ
	hLsU6WlRDqG386+H5HkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3d07-0003hY-Vq; Mon, 17 Feb 2020 09:47:40 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3czx-0003gT-79; Mon, 17 Feb 2020 09:47:30 +0000
Received: by mail-wm1-x343.google.com with SMTP id m10so6959567wmc.0;
 Mon, 17 Feb 2020 01:47:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=d4zYHlqqDvvW5Sr2jyMo4qHJlUioO3j/YOtOOjdLFwk=;
 b=I1c8INOdjiDpFqMkRyEh7DFWmz1+fAzGS4ZScDdrvQ8eJJe9/ICWfnYuqMerFp7OZl
 a0WOahuu2euWOdNwvSlNpZ9g3AJyRSYsI6+or1Ltwnh2wW5GsGgFugJrxp892mlRPej5
 7VFWkGM7NbBkwr5NbziURag8Z87fg0Hc3wM4iEOzf1/FL5IQ1ZTj7D7SC0+Uy4za9wyK
 daeVurqrkKM1RYl00B0OR4WK4USFhRKb8Cfy4YLv6qSi+4xpBHOm2KD8bnFXe3Dxt1x5
 cFKUFsnMxkLNVax3L7CiczUcg0mryy1JnNZT8wL0q00wMOyV/3KePBhk5aivfo7XGkgi
 M8yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=d4zYHlqqDvvW5Sr2jyMo4qHJlUioO3j/YOtOOjdLFwk=;
 b=VITJXK82W8pYOsvwAEU2eKEF0K/Rc2lpjpsokw2CDbmvh4XMkJQGUndglQTMW1DVxV
 JkTA4tn1Rp40VhLZfR1ATW2vgwQaaD8DVkLwR2RkXxDTnGM4e8Q3uEMKUjcoQKW1Uzrg
 MkM9nm9mDTA7FEdwh0n4DFfxirO4z9vGwsbT/l3991OtyZmnF12QHSoXT/n6Yi+ZzNwh
 ZygfE2zaheU09YI8+XD2cGzCr6dAsCvUIovsnJPvqmWMoylcxqxj+MR6Ik4akD6dTZJH
 +soQpHRR15d/20Q6MIZ+tzpBjOC1BV42AVDpC4nTJy4bDF7dkJVm7XcEvLeC87ZSouZ9
 EVzQ==
X-Gm-Message-State: APjAAAUxmx0XggPkOGIaEy94hATNUFDq/gKeRZGWBRu9BwVsALvutc6P
 TjmFl48E9jd90/ARRPj7xG2XuuT0
X-Google-Smtp-Source: APXvYqwMBQ4gfRR++8HizMmRdMpH/UG5rCD+20DHfytyJoUQekBlJyptZCswcfekrw513tUutP1u4Q==
X-Received: by 2002:a1c:f009:: with SMTP id a9mr21247365wmb.73.1581932846927; 
 Mon, 17 Feb 2020 01:47:26 -0800 (PST)
Received: from ziggy.stardust ([213.195.113.243])
 by smtp.gmail.com with ESMTPSA id y139sm20074347wmd.24.2020.02.17.01.47.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Feb 2020 01:47:26 -0800 (PST)
Subject: Re: [PATCH v3 3/4] mmc: mediatek: command queue support
To: Chun-Hung Wu <chun-hung.wu@mediatek.com>,
 Chaotian Jing <chaotian.jing@mediatek.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Linus Walleij
 <linus.walleij@linaro.org>, Pavel Machek <pavel@ucw.cz>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Pan Bian <bianpan2016@163.com>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, Mathieu Malaterre <malat@debian.org>,
 Stanley Chu <stanley.chu@mediatek.com>,
 Kuohong Wang <kuohong.wang@mediatek.com>
References: <1581922564-24914-1-git-send-email-chun-hung.wu@mediatek.com>
 <1581922564-24914-4-git-send-email-chun-hung.wu@mediatek.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 mQINBFP1zgUBEAC21D6hk7//0kOmsUrE3eZ55kjc9DmFPKIz6l4NggqwQjBNRHIMh04BbCMY
 fL3eT7ZsYV5nur7zctmJ+vbszoOASXUpfq8M+S5hU2w7sBaVk5rpH9yW8CUWz2+ZpQXPJcFa
 OhLZuSKB1F5JcvLbETRjNzNU7B3TdS2+zkgQQdEyt7Ij2HXGLJ2w+yG2GuR9/iyCJRf10Okq
 gTh//XESJZ8S6KlOWbLXRE+yfkKDXQx2Jr1XuVvM3zPqH5FMg8reRVFsQ+vI0b+OlyekT/Xe
 0Hwvqkev95GG6x7yseJwI+2ydDH6M5O7fPKFW5mzAdDE2g/K9B4e2tYK6/rA7Fq4cqiAw1+u
 EgO44+eFgv082xtBez5WNkGn18vtw0LW3ESmKh19u6kEGoi0WZwslCNaGFrS4M7OH+aOJeqK
 fx5dIv2CEbxc6xnHY7dwkcHikTA4QdbdFeUSuj4YhIZ+0QlDVtS1QEXyvZbZky7ur9rHkZvP
 ZqlUsLJ2nOqsmahMTIQ8Mgx9SLEShWqD4kOF4zNfPJsgEMB49KbS2o9jxbGB+JKupjNddfxZ
 HlH1KF8QwCMZEYaTNogrVazuEJzx6JdRpR3sFda/0x5qjTadwIW6Cl9tkqe2h391dOGX1eOA
 1ntn9O/39KqSrWNGvm+1raHK+Ev1yPtn0Wxn+0oy1tl67TxUjQARAQABtClNYXR0aGlhcyBC
 cnVnZ2VyIDxtYXR0aGlhcy5iZ2dAZ21haWwuY29tPokCUgQTAQIAPAIbAwYLCQgHAwIGFQgC
 CQoLBBYCAwECHgECF4AWIQTmuZIYwPLDJRwsOhfZFAuyVhMC8QUCWt3scQIZAQAKCRDZFAuy
 VhMC8WzRD/4onkC+gCxG+dvui5SXCJ7bGLCu0xVtiGC673Kz5Aq3heITsERHBV0BqqctOEBy
 ZozQQe2Hindu9lasOmwfH8+vfTK+2teCgWesoE3g3XKbrOCB4RSrQmXGC3JYx6rcvMlLV/Ch
 YMRR3qv04BOchnjkGtvm9aZWH52/6XfChyh7XYndTe5F2bqeTjt+kF/ql+xMc4E6pniqIfkv
 c0wsH4CkBHqoZl9w5e/b9MspTqsU9NszTEOFhy7p2CYw6JEa/vmzR6YDzGs8AihieIXDOfpT
 DUr0YUlDrwDSrlm/2MjNIPTmSGHH94ScOqu/XmGW/0q1iar/Yr0leomUOeeEzCqQtunqShtE
 4Mn2uEixFL+9jiVtMjujr6mphznwpEqObPCZ3IcWqOFEz77rSL+oqFiEA03A2WBDlMm++Sve
 9jpkJBLosJRhAYmQ6ey6MFO6Krylw1LXcq5z1XQQavtFRgZoruHZ3XlhT5wcfLJtAqrtfCe0
 aQ0kJW+4zj9/So0uxJDAtGuOpDYnmK26dgFN0tAhVuNInEVhtErtLJHeJzFKJzNyQ4GlCaLw
 jKcwWcqDJcrx9R7LsCu4l2XpKiyxY6fO4O8DnSleVll9NPfAZFZvf8AIy3EQ8BokUsiuUYHz
 wUo6pclk55PZRaAsHDX/fNr24uC6Eh5oNQ+v4Pax/gtyybkCDQRd1TkHARAAt1BBpmaH+0o+
 deSyJotkrpzZZkbSs5ygBniCUGQqXpWqgrc7Uo/qtxOFL91uOsdX1/vsnJO9FyUv3ZNI2Thw
 NVGCTvCP9E6u4gSSuxEfVyVThCSPvRJHCG2rC+EMAOUMpxokcX9M2b7bBEbcSjeP/E4KTa39
 q+JJSeWliaghUfMXXdimT/uxpP5Aa2/D/vcUUGHLelf9TyihHyBohdyNzeEF3v9rq7kdqamZ
 Ihb+WYrDio/SzqTd1g+wnPJbnu45zkoQrYtBu58n7u8oo+pUummOuTR2b6dcsiB9zJaiVRIg
 OqL8p3K2fnE8Ewwn6IKHnLTyx5T/r2Z0ikyOeijDumZ0VOPPLTnwmb780Nym3LW1OUMieKtn
 I3v5GzZyS83NontvsiRd4oPGQDRBT39jAyBr8vDRl/3RpLKuwWBFTs1bYMLu0sYarwowOz8+
 Mn+CRFUvRrXxociw5n0P1PgJ7vQey4muCZ4VynH1SeVb3KZ59zcQHksKtpzz2OKhtX8FCeVO
 mHW9u4x8s/oUVMZCXEq9QrmVhdIvJnBCqq+1bh5UC2Rfjm/vLHwt5hes0HDstbCzLyiA0LTI
 ADdP77RN2OJbzBkCuWE21YCTLtc8kTQlP+G8m23K5w8k2jleCSKumprCr/5qPyNlkie1HC4E
 GEAfdfN+uLsFw6qPzSAsmukAEQEAAYkEbAQYAQgAIBYhBOa5khjA8sMlHCw6F9kUC7JWEwLx
 BQJd1TkHAhsCAkAJENkUC7JWEwLxwXQgBBkBCAAdFiEEUdvKHhzqrUYPB/u8L21+TfbCqH4F
 Al3VOQcACgkQL21+TfbCqH79RRAAtlb6oAL9y8JM5R1T3v02THFip8OMh7YvEJCnezle9Apq
 C6Vx26RSQjBV1JwSBv6BpgDBNXarTGCPXcre6KGfX8u1r6hnXAHZNHP7bFGJQiBv5RqGFf45
 OhOhbjXCyHc0jrnNjY4M2jTkUC+KIuOzasvggU975nolC8MiaBqfgMB2ab5W+xEiTcNCOg3+
 1SRs5/ZkQ0iyyba2FihSeSw3jTUjPsJBF15xndexoc9jpi0RKuvPiJ191Xa3pzNntIxpsxqc
 ZkS1HSqPI63/urNezeSejBzW0Xz2Bi/b/5R9Hpxp1AEC3OzabOBATY/1Bmh2eAVK3xpN2Fe1
 Zj7HrTgmzBmSefMcSXN0oKQWEI5tHtBbw5XUj0Nw4hMhUtiMfE2HAqcaozsL34sEzi3eethZ
 IvKnIOTmllsDFMbOBa8oUSoaNg7GzkWSKJ59a9qPJkoj/hJqqeyEXF+WTCUv6FcA8BtBJmVf
 FppFzLFM/QzF5fgDZmfjc9czjRJHAGHRMMnQlW88iWamjYVye57srNq9pUql6A4lITF7w00B
 5PXINFk0lMcNUdkWipu24H6rJhOO6xSP4n6OrCCcGsXsAR5oH3d4TzA9iPYrmfXAXD+hTp82
 s+7cEbTsCJ9MMq09/GTCeroTQiqkp50UaR0AvhuPdfjJwVYZfmMS1+5IXA/KY6DbGBAAs5ti
 AK0ieoZlCv/YxOSMCz10EQWMymD2gghjxojf4iwB2MbGp8UN4+++oKLHz+2j+IL08rd2ioFN
 YCJBFDVoDRpF/UnrQ8LsH55UZBHuu5XyMkdJzMaHRVQc1rzfluqx+0a/CQ6Cb2q7J2d45nYx
 8jMSCsGj1/iU/bKjMBtuh91hsbdWCxMRW0JnGXxcEUklbhA5uGj3W4VYCfTQxwK6JiVt7JYp
 bX7JdRKIyq3iMDcsTXi7dhhwqsttQRwbBci0UdFGAG4jT5p6u65MMDVTXEgYfZy0674P06qf
 uSyff73ivwvLR025akzJui8MLU23rWRywXOyTINz8nsPFT4ZSGT1hr5VnIBs/esk/2yFmVoc
 FAxs1aBO29iHmjJ8D84EJvOcKfh9RKeW8yeBNKXHrcOV4MbMOts9+vpJgBFDnJeLFQPtTHuI
 kQXT4+yLDvwOVAW9MPLfcHlczq/A/nhGVaG+RKWDfJWNSu/mbhqUQt4J+RFpfx1gmL3yV8NN
 7JXABPi5M97PeKdx6qc/c1o3oEHH8iBkWZIYMS9fd6rtAqV3+KH5Ors7tQVtwUIDYEvttmeO
 ifvpW6U/4au4zBYfvvXagbyXJhG9mZvz+jN1cr0/G2ZC93IbjFFwUmHtXS4ttQ4pbrX6fjTe
 lq5vmROjiWirpZGm+WA3Vx9QRjqfMdS5Ag0EXdU5SAEQAJu/Jk58uOB8HSGDSuGUB+lOacXC
 bVOOSywZkq+Ayv+3q/XIabyeaYMwhriNuXHjUxIORQoWHIHzTCqsAgHpJFfSHoM4ulCuOPFt
 XjqfEHkA0urB6S0jnvJ6ev875lL4Yi6JJO7WQYRs/l7OakJiT13GoOwDIn7hHH/PGUqQoZlA
 d1n5SVdg6cRd7EqJ+RMNoud7ply6nUSCRMNWbNqbgyWjKsD98CMjHa33SB9WQQSQyFlf+dz+
 dpirWENCoY3vvwKJaSpfeqKYuqPVSxnqpKXqqyjNnG9W46OWZp+JV5ejbyUR/2U+vMwbTilL
 cIUpTgdmxPCA6J0GQjmKNsNKKYgIMn6W4o/LoiO7IgROm1sdn0KbJouCa2QZoQ0+p/7mJXhl
 tA0XGZhNlI3npD1lLpjdd42lWboU4VeuUp4VNOXIWU/L1NZwEwMIqzFXl4HmRi8MYbHHbpN5
 zW+VUrFfeRDPyjrYpax+vWS+l658PPH+sWmhj3VclIoAU1nP33FrsNfp5BiQzao30rwe4ntd
 eEdPENvGmLfCwiUV2DNVrmJaE3CIUUl1KIRoB5oe7rJeOvf0WuQhWjIU98glXIrh3WYd7vsf
 jtbEXDoWhVtwZMShMvp7ccPCe2c4YBToIthxpDhoDPUdNwOssHNLD8G4JIBexwi4q7IT9lP6
 sVstwvA5ABEBAAGJAjYEGAEIACAWIQTmuZIYwPLDJRwsOhfZFAuyVhMC8QUCXdU5SAIbDAAK
 CRDZFAuyVhMC8bXXD/4xyfbyPGnRYtR0KFlCgkG2XWeWSR2shSiM1PZGRPxR888zA2WBYHAk
 7NpJlFchpaErV6WdFrXQjDAd9YwaEHucfS7SAhxIqdIqzV5vNFrMjwhB1N8MfdUJDpgyX7Zu
 k/Phd5aoZXNwsCRqaD2OwFZXr81zSXwE2UdPmIfTYTjeVsOAI7GZ7akCsRPK64ni0XfoXue2
 XUSrUUTRimTkuMHrTYaHY3544a+GduQQLLA+avseLmjvKHxsU4zna0p0Yb4czwoJj+wSkVGQ
 NMDbxcY26CMPK204jhRm9RG687qq6691hbiuAtWABeAsl1AS+mdS7aP/4uOM4kFCvXYgIHxP
 /BoVz9CZTMEVAZVzbRKyYCLUf1wLhcHzugTiONz9fWMBLLskKvq7m1tlr61mNgY9nVwwClMU
 uE7i1H9r/2/UXLd+pY82zcXhFrfmKuCDmOkB5xPsOMVQJH8I0/lbqfLAqfsxSb/X1VKaP243
 jzi+DzD9cvj2K6eD5j5kcKJJQactXqfJvF1Eb+OnxlB1BCLE8D1rNkPO5O742Mq3MgDmq19l
 +abzEL6QDAAxn9md8KwrA3RtucNh87cHlDXfUBKa7SRvBjTczDg+HEPNk2u3hrz1j3l2rliQ
 y1UfYx7Vk/TrdwUIJgKS8QAr8Lw9WuvY2hSqL9vEjx8VAkPWNWPwrQ==
Message-ID: <cf9f977d-8a58-73af-4bb5-7deadca9727c@gmail.com>
Date: Mon, 17 Feb 2020 10:47:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1581922564-24914-4-git-send-email-chun-hung.wu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_014729_286027_B0C22221 
X-CRM114-Status: GOOD (  24.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matthias.bgg[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 17/02/2020 07:56, Chun-Hung Wu wrote:
> Support command queue for mt6779 platform.
> a. Add msdc_set_busy_timeout() to calculate emmc write timeout
> b. Connect mtk msdc driver to cqhci driver through
>    host->cq_host->ops = &msdc_cmdq_ops;
> c. msdc_cmdq_irq() will link up with cqchi_irq(). Besides, it provides
>    more irq error messages like RSPCRCERR/CMDTO/DATACRCERR/DATTMO.
> d. Use the options below to separate support for CQHCI or not, because
>    some of our platform does not support CQHCI hence no kernel option:
>    CONFIG_MMC_CQHCI.
>    #if IS_ENABLED(CONFIG_MMC_CQHCI)
>    XXX //Support CQHCI
>    #else
>    XXX //Not support CQHCI
>    #endif
> 
> Signed-off-by: Chun-Hung Wu <chun-hung.wu@mediatek.com>
> ---
>  drivers/mmc/host/mtk-sd.c | 119 ++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 119 insertions(+)
> 
> diff --git a/drivers/mmc/host/mtk-sd.c b/drivers/mmc/host/mtk-sd.c
> index 127b0cf..b132397 100644
> --- a/drivers/mmc/host/mtk-sd.c
> +++ b/drivers/mmc/host/mtk-sd.c
> @@ -31,6 +31,8 @@
>  #include <linux/mmc/sdio.h>
>  #include <linux/mmc/slot-gpio.h>
>  
> +#include "cqhci.h"
> +
>  #define MAX_BD_NUM          1024
>  
>  /*--------------------------------------------------------------------------*/
> @@ -151,6 +153,7 @@
>  #define MSDC_INT_DMA_BDCSERR    (0x1 << 17)	/* W1C */
>  #define MSDC_INT_DMA_GPDCSERR   (0x1 << 18)	/* W1C */
>  #define MSDC_INT_DMA_PROTECT    (0x1 << 19)	/* W1C */
> +#define MSDC_INT_CMDQ           (0x1 << 28)	/* W1C */
>  
>  /* MSDC_INTEN mask */
>  #define MSDC_INTEN_MMCIRQ       (0x1 << 0)	/* RW */
> @@ -181,6 +184,7 @@
>  /* SDC_CFG mask */
>  #define SDC_CFG_SDIOINTWKUP     (0x1 << 0)	/* RW */
>  #define SDC_CFG_INSWKUP         (0x1 << 1)	/* RW */
> +#define SDC_CFG_WRDTOC          (0x1fff  << 2)  /* RW */
>  #define SDC_CFG_BUSWIDTH        (0x3 << 16)	/* RW */
>  #define SDC_CFG_SDIO            (0x1 << 19)	/* RW */
>  #define SDC_CFG_SDIOIDE         (0x1 << 20)	/* RW */
> @@ -228,6 +232,7 @@
>  #define MSDC_PATCH_BIT_SPCPUSH    (0x1 << 29)	/* RW */
>  #define MSDC_PATCH_BIT_DECRCTMO   (0x1 << 30)	/* RW */
>  
> +#define MSDC_PB1_BUSY_CHECK_SEL   (0x1 << 7)    /* RW */
>  #define MSDC_PATCH_BIT1_STOP_DLY  (0xf << 8)    /* RW */
>  
>  #define MSDC_PATCH_BIT2_CFGRESP   (0x1 << 15)   /* RW */
> @@ -431,6 +436,7 @@ struct msdc_host {
>  	struct msdc_save_para save_para; /* used when gate HCLK */
>  	struct msdc_tune_para def_tune_para; /* default tune setting */
>  	struct msdc_tune_para saved_tune_para; /* tune result of CMD21/CMD19 */
> +	struct cqhci_host *cq_host;
>  };
>  
>  static const struct mtk_mmc_compatible mt8135_compat = {
> @@ -527,6 +533,18 @@ struct msdc_host {
>  	.use_internal_cd = true,
>  };
>  
> +static const struct mtk_mmc_compatible mt6779_compat = {
> +	.clk_div_bits = 12,

I suppose
.hs400_tune = false,
and with this the driver is basically the same as mt8183. So you should put in
the binding description:
"mediatek,mt6779-mmc" "mediatek,mt8183-mmc": for mmc host ip compatible with mt6779

> +	.hs400_tune = false,
> +	.pad_tune_reg = MSDC_PAD_TUNE0,
> +	.async_fifo = true,
> +	.data_tune = true,
> +	.busy_check = true,
> +	.stop_clk_fix = true,
> +	.enhance_rx = true,
> +	.support_64g = true,
> +};
> +
>  static const struct of_device_id msdc_of_ids[] = {
>  	{ .compatible = "mediatek,mt8135-mmc", .data = &mt8135_compat},
>  	{ .compatible = "mediatek,mt8173-mmc", .data = &mt8173_compat},
> @@ -536,6 +554,7 @@ struct msdc_host {
>  	{ .compatible = "mediatek,mt7622-mmc", .data = &mt7622_compat},
>  	{ .compatible = "mediatek,mt8516-mmc", .data = &mt8516_compat},
>  	{ .compatible = "mediatek,mt7620-mmc", .data = &mt7620_compat},
> +	{ .compatible = "mediatek,mt6779-mmc", .data = &mt6779_compat},

With the above mentioned, not needed.
The driver will use the fallback compatible mt8183-mmc. If in the future we find
anything special with mt6779-mmc we can still add an entry here.

Regards,
Matthias

>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, msdc_of_ids);
> @@ -739,6 +758,15 @@ static void msdc_set_timeout(struct msdc_host *host, u64 ns, u64 clks)
>  		      (u32)(timeout > 255 ? 255 : timeout));
>  }
>  
> +static void msdc_set_busy_timeout(struct msdc_host *host, u64 ns, u64 clks)
> +{
> +	u64 timeout;
> +
> +	timeout = msdc_timeout_cal(host, ns, clks);
> +	sdr_set_field(host->base + SDC_CFG, SDC_CFG_WRDTOC,
> +		      (u32)(timeout > 8191 ? 8191 : timeout));
> +}
> +
>  static void msdc_gate_clock(struct msdc_host *host)
>  {
>  	clk_disable_unprepare(host->src_clk_cg);
> @@ -1425,6 +1453,36 @@ static void msdc_enable_sdio_irq(struct mmc_host *mmc, int enb)
>  		pm_runtime_put_noidle(host->dev);
>  }
>  
> +#if IS_ENABLED(CONFIG_MMC_CQHCI)
> +static irqreturn_t msdc_cmdq_irq(struct msdc_host *host, u32 intsts)
> +{
> +	int cmd_err = 0, dat_err = 0;
> +
> +	if (intsts & MSDC_INT_RSPCRCERR) {
> +		cmd_err = (unsigned int)-EILSEQ;
> +		dev_err(host->dev, "%s: CMD CRC ERR", __func__);
> +	} else if (intsts & MSDC_INT_CMDTMO) {
> +		cmd_err = (unsigned int)-ETIMEDOUT;
> +		dev_err(host->dev, "%s: CMD TIMEOUT ERR", __func__);
> +	}
> +
> +	if (intsts & MSDC_INT_DATCRCERR) {
> +		dat_err = (unsigned int)-EILSEQ;
> +		dev_err(host->dev, "%s: DATA CRC ERR", __func__);
> +	} else if (intsts & MSDC_INT_DATTMO) {
> +		dat_err = (unsigned int)-ETIMEDOUT;
> +		dev_err(host->dev, "%s: DATA TIMEOUT ERR", __func__);
> +	}
> +
> +	if (cmd_err || dat_err) {
> +		dev_err(host->dev, "cmd_err = %d, dat_err =%d, intsts = 0x%x",
> +			cmd_err, dat_err, intsts);
> +	}
> +
> +	return cqhci_irq(host->mmc, 0, cmd_err, dat_err);
> +}
> +#endif
> +
>  static irqreturn_t msdc_irq(int irq, void *dev_id)
>  {
>  	struct msdc_host *host = (struct msdc_host *) dev_id;
> @@ -1461,6 +1519,16 @@ static irqreturn_t msdc_irq(int irq, void *dev_id)
>  		if (!(events & (event_mask & ~MSDC_INT_SDIOIRQ)))
>  			break;
>  
> +#if IS_ENABLED(CONFIG_MMC_CQHCI)
> +		if ((host->mmc->caps2 & MMC_CAP2_CQE) &&
> +		    (events & MSDC_INT_CMDQ)) {
> +			msdc_cmdq_irq(host, events);
> +			/* clear interrupts */
> +			writel(events, host->base + MSDC_INT);
> +			return IRQ_HANDLED;
> +		}
> +#endif
> +
>  		if (!mrq) {
>  			dev_err(host->dev,
>  				"%s: MRQ=NULL; events=%08X; event_mask=%08X\n",
> @@ -2144,6 +2212,36 @@ static int msdc_get_cd(struct mmc_host *mmc)
>  		return !val;
>  }
>  
> +static void msdc_cqe_enable(struct mmc_host *mmc)
> +{
> +	struct msdc_host *host = mmc_priv(mmc);
> +
> +	/* enable cmdq irq */
> +	writel(MSDC_INT_CMDQ, host->base + MSDC_INTEN);
> +	/* enable busy check */
> +	sdr_set_bits(host->base + MSDC_PATCH_BIT1, MSDC_PB1_BUSY_CHECK_SEL);
> +	/* default write data / busy timeout 20s */
> +	msdc_set_busy_timeout(host, 20 * 1000000000ULL, 0);
> +	/* default read data timeout 1s */
> +	msdc_set_timeout(host, 1000000000ULL, 0);
> +}
> +
> +void msdc_cqe_disable(struct mmc_host *mmc, bool recovery)
> +{
> +	struct msdc_host *host = mmc_priv(mmc);
> +
> +	/* disable cmdq irq */
> +	sdr_clr_bits(host->base + MSDC_INTEN, MSDC_INT_CMDQ);
> +	/* disable busy check */
> +	sdr_clr_bits(host->base + MSDC_PATCH_BIT1, MSDC_PB1_BUSY_CHECK_SEL);
> +
> +	if (recovery) {
> +		sdr_set_field(host->base + MSDC_DMA_CTRL,
> +			      MSDC_DMA_CTRL_STOP, 1);
> +		msdc_reset_hw(host);
> +	}
> +}
> +
>  static const struct mmc_host_ops mt_msdc_ops = {
>  	.post_req = msdc_post_req,
>  	.pre_req = msdc_pre_req,
> @@ -2160,6 +2258,11 @@ static int msdc_get_cd(struct mmc_host *mmc)
>  	.hw_reset = msdc_hw_reset,
>  };
>  
> +static const struct cqhci_host_ops msdc_cmdq_ops = {
> +	.enable         = msdc_cqe_enable,
> +	.disable        = msdc_cqe_disable,
> +};
> +
>  static void msdc_of_property_parse(struct platform_device *pdev,
>  				   struct msdc_host *host)
>  {
> @@ -2311,6 +2414,22 @@ static int msdc_drv_probe(struct platform_device *pdev)
>  		host->dma_mask = DMA_BIT_MASK(32);
>  	mmc_dev(mmc)->dma_mask = &host->dma_mask;
>  
> +#if IS_ENABLED(CONFIG_MMC_CQHCI)
> +	if (mmc->caps2 & MMC_CAP2_CQE) {
> +		host->cq_host = devm_kzalloc(host->mmc->parent,
> +					     sizeof(*host->cq_host),
> +					     GFP_KERNEL);
> +		host->cq_host->caps |= CQHCI_TASK_DESC_SZ_128;
> +		host->cq_host->mmio = host->base + 0x800;
> +		host->cq_host->ops = &msdc_cmdq_ops;
> +		cqhci_init(host->cq_host, mmc, true);
> +		mmc->max_segs = 128;
> +		/* cqhci 16bit length */
> +		/* 0 size, means 65536 so we don't have to -1 here */
> +		mmc->max_seg_size = 64 * 1024;
> +	}
> +#endif
> +
>  	host->timeout_clks = 3 * 1048576;
>  	host->dma.gpd = dma_alloc_coherent(&pdev->dev,
>  				2 * sizeof(struct mt_gpdma_desc),
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
