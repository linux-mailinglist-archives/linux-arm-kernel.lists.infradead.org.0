Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A118811CCA3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 12:57:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fZ8hCoo9dHyFGhiWclnjWIr0bs44UHxIypTEzBcI/gM=; b=TVd8QrYB9OKMaC
	QYjLELtd/mFoEEIg0E7hrKYTllukoOxFdsTKUUCqgKWp9W4no6WUdQhHbDWrgh5eSPb4PXbs0v/Dc
	JobuzqCADBP5Pwq05fUa54xkY0GV9BldWjLAhvNwztto5ejvmUT6mObDY1LlgQrjk5+H5+hx63Z5d
	3l9u3gNw+R2bKugN/mX7ftD6Fup6UGkEYA/pVQAW3x7DQBN2EJZztOPHfUmIQROucffZEf7nXz88O
	emVaFrhKEksk72cLAQlFTcYtDlzfLZnzPjLyEw/TTgwZrqEJijh/szyZUVBawocjVYUcDPnhCJqVS
	Lpgdczumzu9Dh8uj4dkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifN6C-0005Qe-5D; Thu, 12 Dec 2019 11:57:40 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifN5z-0005PX-Kp
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 11:57:31 +0000
Received: by mail-wm1-x341.google.com with SMTP id a5so2077423wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 03:57:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=g4sLWIz5wCZzMzUWDfFp74WuNe8YEOmLEzb0N/KDXiI=;
 b=HCfW07WE/ZZuzjFoS3oBiva19GS0wkKEMlq7duySKcAjWR2tRu/C7XVHNLMKl+ORTy
 EDWvMJrb49ECBIUeYCT+8o4GGzt0jlX+freOHrYy8drMvBwxzgsCTnEHTiHm70bxO3dk
 NtPQqjeM8M4LWLlndn2WKgM2Hff53Ij4VEaF63zewJanvi4VbOeDcoROMIIOu983hCOz
 aA+iwntBdLX0BmawM94RkrbbHn85sRy2tU5brFpnBoynAADB8TZXV/So+oPUGt47LewV
 0odiVkG2OsTD+ua63yRfHWlZyPSzno1dCm2E0VnKKwnw44ohUJx/Pq0QFG/1i0UpQXRj
 kCbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=g4sLWIz5wCZzMzUWDfFp74WuNe8YEOmLEzb0N/KDXiI=;
 b=qcaYcKPtGCVac/H5A3rpiPd47fUOVwxVviMtZRCAUyNWyh8Xc3rUTYIjj4F7Ot140B
 mfwbnn0jf3g3YpYetmfcQBcRVFRbW2Ocr5JrepuwyCm1y4Iv66SNqElLxTqAjjCCzaKf
 feyFQk2dgpB8Uolr8GzanSKVug5yner0x3l5sMZYpLk0xOJ4yGN//E06AGxuWSqhQN7B
 UTpXixvZDjia1DRGyGn4003+OF08WUQiv+J2Y8P6b3hG4aNnQms0Nt7hfbA8Z2MQYLj0
 RmNHj+1o9cdnvcVPRcP4gtkeMvu70zLXZKjnPhM+FBgam5qzUvaX740DNa3dCtdcimz4
 9xXA==
X-Gm-Message-State: APjAAAVOkCqPo33vX3nRYJOOMrwQGqRQXm3EhAg/GScmCeVNBeKFruJ5
 agUpjJ0ise4KLXMjg3DB0IK+NOZxq5A=
X-Google-Smtp-Source: APXvYqzmH84GlcDNMFYfQqv2994jZB4PIsUz30qBbHUYjQNBf6MQ4/PuFz9+7Bp0apoi6mAsdoedTQ==
X-Received: by 2002:a1c:41c4:: with SMTP id o187mr6209967wma.24.1576151845413; 
 Thu, 12 Dec 2019 03:57:25 -0800 (PST)
Received: from ziggy.stardust ([37.223.145.31])
 by smtp.gmail.com with ESMTPSA id a84sm6001982wme.44.2019.12.12.03.57.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 Dec 2019 03:57:24 -0800 (PST)
Subject: Re: [PATCH] ASoC: Add MediaTek MT6660 Speaker Amp Driver
To: Jeff Chang <richtek.jeff.chang@gmail.com>, lgirdwood@gmail.com
References: <1576148934-27701-1-git-send-email-richtek.jeff.chang@gmail.com>
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
Message-ID: <7590044b-60a8-edfd-55fb-57b097912b45@gmail.com>
Date: Thu, 12 Dec 2019 12:57:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <1576148934-27701-1-git-send-email-richtek.jeff.chang@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_035727_755109_15550C12 
X-CRM114-Status: GOOD (  26.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matthias.bgg[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org, tiwai@suse.com,
 broonie@kernel.org, jeff_chang@richtek.com, perex@perex.cz,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12/12/2019 12:08, Jeff Chang wrote:
>     The MT6660 is a boosted BTL class-D amplifier with V/I sensing.
>     A built-in DC-DC step-up converter is used to provide efficient
>     power for class-D amplifier with multi-level class-G operation.
>     The digital audio interface supports I2S, left-justified,
>     right-justified, TDM and DSP A/B format for audio in with a data
>     out used for chip information like voltage sense and current
>     sense, which are able to be monitored via DATAO through proper

 ^^^ why are there spaces here?

If you send a new version of the patch then please send it with prefix [PATCH
v2], [PATCH v3] etc so that everybody knows about it.

> ---

Also normally you should provide a changelog to older versions which goes below
the line "---".

This will help reviewers to understand quickly what you fixed.

Regards,
Matthias

>  sound/soc/codecs/Kconfig  |   14 +
>  sound/soc/codecs/Makefile |    2 +
>  sound/soc/codecs/mt6660.c | 1063 +++++++++++++++++++++++++++++++++++++++++++++
>  sound/soc/codecs/mt6660.h |   95 ++++
>  4 files changed, 1174 insertions(+)
>  create mode 100644 sound/soc/codecs/mt6660.c
>  create mode 100644 sound/soc/codecs/mt6660.h
> 
> diff --git a/sound/soc/codecs/Kconfig b/sound/soc/codecs/Kconfig
> index 229cc89..806cd03 100644
> --- a/sound/soc/codecs/Kconfig
> +++ b/sound/soc/codecs/Kconfig
> @@ -122,6 +122,7 @@ config SND_SOC_ALL_CODECS
>  	select SND_SOC_ML26124 if I2C
>  	select SND_SOC_MT6351 if MTK_PMIC_WRAP
>  	select SND_SOC_MT6358 if MTK_PMIC_WRAP
> +	select SND_SOC_MT6660 if I2C
>  	select SND_SOC_NAU8540 if I2C
>  	select SND_SOC_NAU8810 if I2C
>  	select SND_SOC_NAU8822 if I2C
> @@ -1465,6 +1466,19 @@ config SND_SOC_MT6358
>  	  Enable support for the platform which uses MT6358 as
>  	  external codec device.
>  
> +config SND_SOC_MT6660
> +	tristate "Mediatek MT6660 Speaker Amplifier"
> +	depends on I2C
> +	select CRC32
> +	select CRYPTO_SHA256
> +	select CRYTO_RSA
> +	help
> +	  MediaTek MT6660 is a smart power amplifier which contain
> +	  speaker protection, multi-band DRC, equalizer functions.
> +	  Select N if you don't have MT6660 on board.
> +	  Select M to build this as module.
> +
> +
>  config SND_SOC_NAU8540
>         tristate "Nuvoton Technology Corporation NAU85L40 CODEC"
>         depends on I2C
> diff --git a/sound/soc/codecs/Makefile b/sound/soc/codecs/Makefile
> index c498373..2b6814c 100644
> --- a/sound/soc/codecs/Makefile
> +++ b/sound/soc/codecs/Makefile
> @@ -119,6 +119,7 @@ snd-soc-msm8916-analog-objs := msm8916-wcd-analog.o
>  snd-soc-msm8916-digital-objs := msm8916-wcd-digital.o
>  snd-soc-mt6351-objs := mt6351.o
>  snd-soc-mt6358-objs := mt6358.o
> +snd-soc-mt6660-objs := mt6660.o
>  snd-soc-nau8540-objs := nau8540.o
>  snd-soc-nau8810-objs := nau8810.o
>  snd-soc-nau8822-objs := nau8822.o
> @@ -403,6 +404,7 @@ obj-$(CONFIG_SND_SOC_MSM8916_WCD_ANALOG) +=snd-soc-msm8916-analog.o
>  obj-$(CONFIG_SND_SOC_MSM8916_WCD_DIGITAL) +=snd-soc-msm8916-digital.o
>  obj-$(CONFIG_SND_SOC_MT6351)	+= snd-soc-mt6351.o
>  obj-$(CONFIG_SND_SOC_MT6358)	+= snd-soc-mt6358.o
> +obj-$(CONFIG_SND_SOC_MT6660)	+= snd-soc-mt6660.o
>  obj-$(CONFIG_SND_SOC_NAU8540)   += snd-soc-nau8540.o
>  obj-$(CONFIG_SND_SOC_NAU8810)   += snd-soc-nau8810.o
>  obj-$(CONFIG_SND_SOC_NAU8822)   += snd-soc-nau8822.o
> diff --git a/sound/soc/codecs/mt6660.c b/sound/soc/codecs/mt6660.c
> new file mode 100644
> index 0000000..5ba8ec5
> --- /dev/null
> +++ b/sound/soc/codecs/mt6660.c
> @@ -0,0 +1,1063 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2019 MediaTek Inc.
> + */
> +
> +#include <linux/module.h>
> +#include <linux/kernel.h>
> +#include <linux/version.h>
> +#include <linux/err.h>
> +#include <linux/i2c.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/delay.h>
> +#include <sound/soc.h>
> +#include <sound/tlv.h>
> +#include <sound/pcm_params.h>
> +#include <linux/debugfs.h>
> +
> +#include "mt6660.h"
> +
> +struct codec_reg_val {
> +	u32 addr;
> +	u32 mask;
> +	u32 data;
> +};
> +
> +struct reg_size_table {
> +	u32 addr;
> +	u8 size;
> +};
> +
> +static const struct reg_size_table mt6660_reg_size_table[] = {
> +	{ MT6660_REG_HPF1_COEF, 4 },
> +	{ MT6660_REG_HPF2_COEF, 4 },
> +	{ MT6660_REG_TDM_CFG3, 2 },
> +	{ MT6660_REG_RESV17, 2 },
> +	{ MT6660_REG_RESV23, 2 },
> +	{ MT6660_REG_SIGMAX, 2 },
> +	{ MT6660_REG_DEVID, 2},
> +	{ MT6660_REG_TDM_CFG3, 2},
> +	{ MT6660_REG_HCLIP_CTRL, 2},
> +	{ MT6660_REG_DA_GAIN, 2},
> +};
> +
> +static int mt6660_get_reg_size(uint32_t addr)
> +{
> +	int i = 0;
> +
> +	for (i = 0; i < ARRAY_SIZE(mt6660_reg_size_table); i++) {
> +		if (mt6660_reg_size_table[i].addr == addr)
> +			return mt6660_reg_size_table[i].size;
> +	}
> +	return 1;
> +}
> +
> +#if GENERIC_DEBUGFS
> +static int mt6660_dbg_io_read(void *drvdata, u16 reg, void *val, u16 size)
> +{
> +	struct mt6660_chip *chip = (struct mt6660_chip *)drvdata;
> +	int ret = 0, i = 0;
> +	unsigned int data;
> +	u8 *_val = val;
> +
> +	if (size != 1 && size != 2 && size != 4) {
> +		dev_err(chip->dev, "%s size not match\n", __func__);
> +		return -EINVAL;
> +	}
> +	ret = regmap_read(chip->regmap, reg, &data);
> +	if (reg < 0)
> +		return ret;
> +
> +	for (i = 0; i < size; i++)
> +		_val[size-i-1] = (data >> (8*i))&0xff;
> +
> +	return 0;
> +}
> +
> +static int mt6660_dbg_io_write(void *drvdata, u16 reg,
> +			       const void *val, u16 size)
> +{
> +	struct mt6660_chip *chip = (struct mt6660_chip *)drvdata;
> +	int reg_size = mt6660_get_reg_size(reg);
> +	int i = 0;
> +	unsigned int regval = 0;
> +	u8 *_val = (u8 *)val;
> +
> +	if (size != reg_size) {
> +		dev_err(chip->dev,
> +			"%s size not match reg_size(%d), size(%d)\n",
> +			__func__, reg_size, size);
> +		return -EINVAL;
> +	}
> +
> +	for (i = 0; i < size; i++) {
> +		regval <<= 8;
> +		regval |= _val[i];
> +	}
> +
> +	return regmap_write(chip->regmap, reg, regval);
> +}
> +#endif /* GENERIC_DEBUGFS */
> +
> +static int mt6660_reg_write(void *context, unsigned int reg, unsigned int val)
> +{
> +	struct mt6660_chip *chip = context;
> +	int size = mt6660_get_reg_size(reg);
> +	u8 reg_data[4] = {0};
> +	int i = 0;
> +
> +	for (i = 0; i < size; i++)
> +		reg_data[size - i - 1] = (val >> (8 * i)) & 0xff;
> +
> +	return i2c_smbus_write_i2c_block_data(chip->i2c, reg, size, reg_data);
> +}
> +
> +static int mt6660_reg_read(void *context, unsigned int reg, unsigned int *val)
> +{
> +	struct mt6660_chip *chip = context;
> +	int size = mt6660_get_reg_size(reg);
> +	int i = 0, ret = 0;
> +	u8 data[4] = {0};
> +	u32 reg_data = 0;
> +
> +	ret = i2c_smbus_read_i2c_block_data(chip->i2c, reg, size, data);
> +	if (ret < 0)
> +		return ret;
> +	for (i = 0; i < size; i++) {
> +		reg_data <<= 8;
> +		reg_data |= data[i];
> +	}
> +	*val = reg_data;
> +
> +	return ret;
> +}
> +
> +static bool mt6660_volatile_reg(struct device *dev, unsigned int reg)
> +{
> +	return true;
> +}
> +
> +static struct regmap_config mt6660_regmap_config = {
> +	.reg_bits = 8,
> +	.val_bits = 32,
> +	.reg_write = mt6660_reg_write,
> +	.reg_read = mt6660_reg_read,
> +	.volatile_reg = mt6660_volatile_reg,
> +};
> +
> +static unsigned int mt6660_component_io_read(
> +	struct snd_soc_component *component, unsigned int reg)
> +{
> +	struct mt6660_chip *chip = snd_soc_component_get_drvdata(component);
> +	unsigned int val;
> +	int ret;
> +
> +	ret = regmap_read(chip->regmap, reg, &val);
> +	if (ret < 0) /* ret success -> >= 0, fail -> < - */
> +		return ret;
> +	pr_err("%s val = 0x%x\n", __func__, val);
> +	return val;
> +}
> +
> +static int mt6660_component_io_write(struct snd_soc_component *component,
> +	unsigned int reg, unsigned int data)
> +{
> +	struct mt6660_chip *chip = snd_soc_component_get_drvdata(component);
> +
> +	pr_err("%s data = 0x%x\n", __func__, data);
> +	return regmap_write(chip->regmap, reg, data);
> +}
> +
> +static const int mt6660_dump_table[] = {
> +	MT6660_REG_DEVID,
> +	MT6660_REG_SYSTEM_CTRL,
> +	MT6660_REG_IRQ_STATUS1,
> +	MT6660_REG_ADDA_CLOCK,
> +	MT6660_REG_SERIAL_CFG1,
> +	MT6660_REG_DATAO_SEL,
> +	MT6660_REG_TDM_CFG3,
> +	MT6660_REG_HPF_CTRL,
> +	MT6660_REG_HPF1_COEF,
> +	MT6660_REG_HPF2_COEF,
> +	MT6660_REG_PATH_BYPASS,
> +	MT6660_REG_WDT_CTRL,
> +	MT6660_REG_HCLIP_CTRL,
> +	MT6660_REG_VOL_CTRL,
> +	MT6660_REG_SPS_CTRL,
> +	MT6660_REG_SIGMAX,
> +	MT6660_REG_CALI_T0,
> +	MT6660_REG_BST_CTRL,
> +	MT6660_REG_PROTECTION_CFG,
> +	MT6660_REG_DA_GAIN,
> +	MT6660_REG_AUDIO_IN2_SEL,
> +	MT6660_REG_SIG_GAIN,
> +	MT6660_REG_PLL_CFG1,
> +	MT6660_REG_DRE_CTRL,
> +	MT6660_REG_DRE_THDMODE,
> +	MT6660_REG_DRE_CORASE,
> +	MT6660_REG_PWM_CTRL,
> +	MT6660_REG_DC_PROTECT_CTRL,
> +	MT6660_REG_ADC_USB_MODE,
> +	MT6660_REG_INTERNAL_CFG,
> +	MT6660_REG_RESV0,
> +	MT6660_REG_RESV1,
> +	MT6660_REG_RESV2,
> +	MT6660_REG_RESV3,
> +	MT6660_REG_RESV7,
> +	MT6660_REG_RESV10,
> +	MT6660_REG_RESV11,
> +	MT6660_REG_RESV16,
> +	MT6660_REG_RESV17,
> +	MT6660_REG_RESV19,
> +	MT6660_REG_RESV21,
> +	MT6660_REG_RESV23,
> +	MT6660_REG_RESV31,
> +	MT6660_REG_RESV40,
> +};
> +
> +#if GENERIC_DEBUGFS
> +#ifdef CONFIG_DEBUG_FS
> +/* reg/size/data/bustype */
> +#define PREALLOC_RBUFFER_SIZE	(32)
> +#define PREALLOC_WBUFFER_SIZE	(1000)
> +
> +static int data_debug_show(struct seq_file *s, void *data)
> +{
> +	struct dbg_info *di = s->private;
> +	struct dbg_internal *d = &di->internal;
> +	void *buffer;
> +	u8 *pdata;
> +	int i, ret;
> +
> +	if (d->data_buffer_size < d->size) {
> +		buffer = kzalloc(d->size, GFP_KERNEL);
> +		if (!buffer)
> +			return -ENOMEM;
> +		kfree(d->data_buffer);
> +		d->data_buffer = buffer;
> +		d->data_buffer_size = d->size;
> +	}
> +	/* read transfer */
> +	if (!di->io_read)
> +		return -EPERM;
> +	ret = di->io_read(di->io_drvdata, d->reg, d->data_buffer, d->size);
> +	if (ret < 0)
> +		return ret;
> +	pdata = d->data_buffer;
> +	seq_printf(s, "0x");
> +	for (i = 0; i < d->size; i++)
> +		seq_printf(s, "%02x,", *(pdata + i));
> +	seq_printf(s, "\n");
> +	return 0;
> +}
> +
> +static int data_debug_open(struct inode *inode, struct file *file)
> +{
> +	if (file->f_mode & FMODE_READ)
> +		return single_open(file, data_debug_show, inode->i_private);
> +	return simple_open(inode, file);
> +}
> +
> +static ssize_t data_debug_write(struct file *file,
> +				const char __user *user_buf,
> +				size_t cnt, loff_t *loff)
> +{
> +	struct dbg_info *di = file->private_data;
> +	struct dbg_internal *d = &di->internal;
> +	void *buffer;
> +	u8 *pdata;
> +	char buf[PREALLOC_WBUFFER_SIZE + 1], *token, *cur;
> +	int val_cnt = 0, ret;
> +
> +	if (cnt > PREALLOC_WBUFFER_SIZE)
> +		return -ENOMEM;
> +	if (copy_from_user(buf, user_buf, cnt))
> +		return -EFAULT;
> +	buf[cnt] = 0;
> +	/* buffer size check */
> +	if (d->data_buffer_size < d->size) {
> +		buffer = kzalloc(d->size, GFP_KERNEL);
> +		if (!buffer)
> +			return -ENOMEM;
> +		kfree(d->data_buffer);
> +		d->data_buffer = buffer;
> +		d->data_buffer_size = d->size;
> +	}
> +	/* data parsing */
> +	cur = buf;
> +	pdata = d->data_buffer;
> +	while ((token = strsep(&cur, ",\n")) != NULL) {
> +		if (!*token)
> +			break;
> +		if (val_cnt++ >= d->size)
> +			break;
> +		if (kstrtou8(token, 16, pdata++))
> +			return -EINVAL;
> +	}
> +	if (val_cnt != d->size)
> +		return -EINVAL;
> +	/* write transfer */
> +	if (!di->io_write)
> +		return -EPERM;
> +	ret = di->io_write(di->io_drvdata, d->reg, d->data_buffer, d->size);
> +	return (ret < 0) ? ret : cnt;
> +}
> +
> +static int data_debug_release(struct inode *inode, struct file *file)
> +{
> +	if (file->f_mode & FMODE_READ)
> +		return single_release(inode, file);
> +	return 0;
> +}
> +
> +static const struct file_operations data_debug_fops = {
> +	.open = data_debug_open,
> +	.read = seq_read,
> +	.write = data_debug_write,
> +	.llseek = seq_lseek,
> +	.release = data_debug_release,
> +};
> +
> +static int type_debug_show(struct seq_file *s, void *data)
> +{
> +	struct dbg_info *di = s->private;
> +
> +	seq_printf(s, "%s,%s\n", di->typestr, di->devname);
> +	return 0;
> +}
> +
> +static int type_debug_open(struct inode *inode, struct file *file)
> +{
> +	return single_open(file, type_debug_show, inode->i_private);
> +}
> +
> +static const struct file_operations type_debug_fops = {
> +	.open = type_debug_open,
> +	.read = seq_read,
> +	.llseek = seq_lseek,
> +	.release = single_release,
> +};
> +
> +static int dump_debug_show(struct seq_file *s, void *data)
> +{
> +	struct dbg_info *di = s->private;
> +	struct mt6660_chip *chip =
> +		container_of(di, struct mt6660_chip, dbg_info);
> +	int i = 0, j = 0, ret = 0;
> +	unsigned int val;
> +	int size = 0;
> +
> +	if (!chip) {
> +		pr_err("%s chip is null\n", __func__);
> +		return -ENODEV;
> +	}
> +
> +	for (i = 0; i < ARRAY_SIZE(mt6660_dump_table); i++) {
> +		ret = regmap_read(chip->regmap, mt6660_dump_table[i], &val);
> +		size = mt6660_get_reg_size(mt6660_dump_table[i]);
> +		seq_printf(s, "reg0x%02x:0x", mt6660_dump_table[i]);
> +		for (j = size - 1; j >= 0; j--)
> +			seq_printf(s, "%x,", (val >> 8*j)&0xff);
> +		seq_printf(s, "\n");
> +	}
> +	return 0;
> +}
> +
> +static int dump_debug_open(struct inode *inode, struct file *file)
> +{
> +	return single_open(file, dump_debug_show, inode->i_private);
> +}
> +
> +static const struct file_operations dump_debug_fops = {
> +	.open = dump_debug_open,
> +	.read = seq_read,
> +	.llseek = seq_lseek,
> +	.release = single_release,
> +};
> +
> +static ssize_t lock_debug_read(struct file *file,
> +			       char __user *user_buf, size_t cnt, loff_t *loff)
> +{
> +	struct dbg_info *di = file->private_data;
> +	struct dbg_internal *d = &di->internal;
> +	char buf[10];
> +
> +	snprintf(buf, sizeof(buf), "%d\n", mutex_is_locked(&d->io_lock));
> +	return simple_read_from_buffer(user_buf, cnt, loff, buf, strlen(buf));
> +}
> +
> +static ssize_t lock_debug_write(struct file *file,
> +				const char __user *user_buf,
> +				size_t cnt, loff_t *loff)
> +{
> +	struct dbg_info *di = file->private_data;
> +	struct dbg_internal *d = &di->internal;
> +	u32 lock;
> +	int ret;
> +
> +	ret = kstrtou32_from_user(user_buf, cnt, 0, &lock);
> +	if (ret < 0)
> +		return ret;
> +	lock ? mutex_lock(&d->io_lock) : mutex_unlock(&d->io_lock);
> +	return cnt;
> +}
> +
> +static const struct file_operations lock_debug_fops = {
> +	.open = simple_open,
> +	.read = lock_debug_read,
> +	.write = lock_debug_write,
> +};
> +
> +static int generic_debugfs_init(struct dbg_info *di)
> +{
> +	struct dbg_internal *d = &di->internal;
> +
> +	/* valid check */
> +	if (!di->dirname || !di->devname || !di->typestr)
> +		return -EINVAL;
> +	d->data_buffer_size = PREALLOC_RBUFFER_SIZE;
> +	d->data_buffer = kzalloc(PREALLOC_RBUFFER_SIZE, GFP_KERNEL);
> +	if (!d->data_buffer)
> +		return -ENOMEM;
> +	/* create debugfs */
> +	d->rt_root = debugfs_lookup("ext_dev_io", NULL);
> +	if (!d->rt_root) {
> +		d->rt_root = debugfs_create_dir("ext_dev_io", NULL);
> +		if (!d->rt_root)
> +			return -ENODEV;
> +		d->rt_dir_create = true;
> +	}
> +	d->ic_root = debugfs_create_dir(di->dirname, d->rt_root);
> +	if (!d->ic_root)
> +		goto err_cleanup_rt;
> +	if (!debugfs_create_u16("reg", 0644, d->ic_root, &d->reg))
> +		goto err_cleanup_ic;
> +	if (!debugfs_create_u16("size", 0644, d->ic_root, &d->size))
> +		goto err_cleanup_ic;
> +	if (!debugfs_create_file("data", 0644,
> +				 d->ic_root, di, &data_debug_fops))
> +		goto err_cleanup_ic;
> +	if (!debugfs_create_file("type", 0444,
> +				 d->ic_root, di, &type_debug_fops))
> +		goto err_cleanup_ic;
> +	if (!debugfs_create_file("lock", 0644,
> +				 d->ic_root, di, &lock_debug_fops))
> +		goto err_cleanup_ic;
> +	if (!debugfs_create_file("dumps", 0444,
> +				d->ic_root, di, &dump_debug_fops))
> +		goto err_cleanup_ic;
> +	mutex_init(&d->io_lock);
> +	return 0;
> +err_cleanup_ic:
> +	debugfs_remove_recursive(d->ic_root);
> +err_cleanup_rt:
> +	if (d->rt_dir_create)
> +		debugfs_remove_recursive(d->rt_root);
> +	kfree(d->data_buffer);
> +	return -ENODEV;
> +}
> +
> +static void generic_debugfs_exit(struct dbg_info *di)
> +{
> +	struct dbg_internal *d = &di->internal;
> +
> +	mutex_destroy(&d->io_lock);
> +	debugfs_remove_recursive(d->ic_root);
> +	if (d->rt_dir_create)
> +		debugfs_remove_recursive(d->rt_root);
> +	kfree(d->data_buffer);
> +}
> +#else
> +static inline int generic_debugfs_init(struct dbg_info *di)
> +{
> +	return 0;
> +}
> +
> +static inline void generic_debugfs_exit(struct dbg_info *di) {}
> +#endif /* CONFIG_DEBUG_FS */
> +#endif /* GENERIC_DEBUGFS */
> +
> +/*
> + * MT6660 Generic Setting make this chip work normally.
> + * it is tuned by Richtek RDs.
> + */
> +static const struct codec_reg_val generic_reg_inits[] = {
> +	{ MT6660_REG_WDT_CTRL, 0x80, 0x00 },
> +	{ MT6660_REG_SPS_CTRL, 0x01, 0x00 },
> +	{ MT6660_REG_AUDIO_IN2_SEL, 0x1c, 0x04 },
> +	{ MT6660_REG_RESV11, 0x0c, 0x00 },
> +	{ MT6660_REG_RESV31, 0x03, 0x03 },
> +	{ MT6660_REG_RESV40, 0x01, 0x00 },
> +	{ MT6660_REG_RESV0, 0x44, 0x04 },
> +	{ MT6660_REG_RESV19, 0xff, 0x82 },
> +	{ MT6660_REG_RESV17, 0x7777, 0x7273 },
> +	{ MT6660_REG_RESV16, 0x07, 0x03 },
> +	{ MT6660_REG_DRE_CORASE, 0xe0, 0x20 },
> +	{ MT6660_REG_ADDA_CLOCK, 0xff, 0x70 },
> +	{ MT6660_REG_RESV21, 0xff, 0x20 },
> +	{ MT6660_REG_DRE_THDMODE, 0xff, 0x40 },
> +	{ MT6660_REG_RESV23, 0xffff, 0x17f8 },
> +	{ MT6660_REG_PWM_CTRL, 0xff, 0x15 },
> +	{ MT6660_REG_ADC_USB_MODE, 0xff, 0x00 },
> +	{ MT6660_REG_PROTECTION_CFG, 0xff, 0x1d },
> +	{ MT6660_REG_HPF1_COEF, 0xffffffff, 0x7fdb7ffe },
> +	{ MT6660_REG_HPF2_COEF, 0xffffffff, 0x7fdb7ffe },
> +	{ MT6660_REG_SIG_GAIN, 0xff, 0x58 },
> +	{ MT6660_REG_RESV6, 0xff, 0xce },
> +	{ MT6660_REG_SIGMAX, 0xffff, 0x7fff },
> +	{ MT6660_REG_DA_GAIN, 0xffff, 0x0116 },
> +	{ MT6660_REG_TDM_CFG3, 0x1800, 0x0800 },
> +	{ MT6660_REG_DRE_CTRL, 0x1f, 0x07 },
> +};
> +
> +static int mt6660_component_init_setting(struct snd_soc_component *component)
> +{
> +	int i, len, ret;
> +	const struct codec_reg_val *init_table;
> +
> +	pr_info("%s start\n", __func__);
> +	init_table = generic_reg_inits;
> +	len = ARRAY_SIZE(generic_reg_inits);
> +
> +	for (i = 0; i < len; i++) {
> +		ret = snd_soc_component_update_bits(component,
> +			init_table[i].addr,
> +			init_table[i].mask, init_table[i].data);
> +		if (ret < 0)
> +			return ret;
> +	}
> +	pr_info("%s end\n", __func__);
> +	return 0;
> +}
> +
> +static int mt6660_component_set_bias_level(struct snd_soc_component *component,
> +	enum snd_soc_bias_level level)
> +{
> +	struct snd_soc_dapm_context *dapm =
> +		snd_soc_component_get_dapm(component);
> +	struct mt6660_chip *chip = snd_soc_component_get_drvdata(component);
> +	unsigned int val;
> +	int ret = 0;
> +
> +	switch (level) {
> +	case SND_SOC_BIAS_OFF:
> +		ret = regmap_read(chip->regmap, MT6660_REG_IRQ_STATUS1, &val);
> +		dev_info(component->dev,
> +			"%s reg0x05 = 0x%x\n", __func__, val);
> +		break;
> +	case SND_SOC_BIAS_ON:
> +	case SND_SOC_BIAS_PREPARE:
> +	/* Fall Through */
> +	case SND_SOC_BIAS_STANDBY:
> +	default:
> +		break;
> +	}
> +	dapm->bias_level = level;
> +	dev_dbg(component->dev, "c bias_level = %d\n", level);
> +	return 0;
> +}
> +
> +static int mt6660_codec_dac_event(struct snd_soc_dapm_widget *w,
> +	struct snd_kcontrol *kcontrol, int event)
> +{
> +	switch (event) {
> +	case SND_SOC_DAPM_POST_PMU:
> +		usleep_range(1000, 1100);
> +		break;
> +	}
> +	return 0;
> +}
> +
> +static int mt6660_codec_classd_event(struct snd_soc_dapm_widget *w,
> +	struct snd_kcontrol *kcontrol, int event)
> +{
> +	struct snd_soc_component *component =
> +		snd_soc_dapm_to_component(w->dapm);
> +	int ret = 0;
> +
> +	switch (event) {
> +	case SND_SOC_DAPM_PRE_PMU:
> +		dev_dbg(component->dev,
> +			"%s: before classd turn on\n", __func__);
> +		/* config to adaptive mode */
> +		ret = snd_soc_component_update_bits(component,
> +			MT6660_REG_BST_CTRL, 0x03, 0x03);
> +		if (ret < 0) {
> +			dev_err(component->dev, "config mode adaptive fail\n");
> +			return ret;
> +		}
> +		break;
> +	case SND_SOC_DAPM_POST_PMU:
> +		/* voltage sensing enable */
> +		ret = snd_soc_component_update_bits(component,
> +			MT6660_REG_RESV7, 0x04, 0x04);
> +		if (ret < 0) {
> +			dev_err(component->dev,
> +				"enable voltage sensing fail\n");
> +			return ret;
> +		}
> +		break;
> +	case SND_SOC_DAPM_PRE_PMD:
> +		/* voltage sensing disable */
> +		ret = snd_soc_component_update_bits(component,
> +			MT6660_REG_RESV7, 0x04, 0x00);
> +		if (ret < 0) {
> +			dev_err(component->dev,
> +				"disable voltage sensing fail\n");
> +			return ret;
> +		}
> +		/* pop-noise improvement 1 */
> +		ret = snd_soc_component_update_bits(component,
> +			MT6660_REG_RESV10, 0x10, 0x10);
> +		if (ret < 0) {
> +			dev_err(component->dev,
> +				"pop-noise improvement 1 fail\n");
> +			return ret;
> +		}
> +		break;
> +	case SND_SOC_DAPM_POST_PMD:
> +		dev_dbg(component->dev,
> +			"%s: after classd turn off\n", __func__);
> +		/* pop-noise improvement 2 */
> +		ret = snd_soc_component_update_bits(component,
> +			MT6660_REG_RESV10, 0x10, 0x00);
> +		if (ret < 0) {
> +			dev_err(component->dev,
> +				"pop-noise improvement 2 fail\n");
> +			return ret;
> +		}
> +		/* config to off mode */
> +		ret = snd_soc_component_update_bits(component,
> +			MT6660_REG_BST_CTRL, 0x03, 0x00);
> +		if (ret < 0) {
> +			dev_err(component->dev, "config mode off fail\n");
> +			return ret;
> +		}
> +		break;
> +	}
> +	return 0;
> +}
> +
> +static const struct snd_soc_dapm_widget mt6660_component_dapm_widgets[] = {
> +	SND_SOC_DAPM_DAC_E("DAC", NULL, MT6660_REG_PLL_CFG1,
> +		0, 1, mt6660_codec_dac_event, SND_SOC_DAPM_POST_PMU),
> +	SND_SOC_DAPM_ADC("VI ADC", NULL, SND_SOC_NOPM, 0, 0),
> +	SND_SOC_DAPM_PGA("PGA", SND_SOC_NOPM, 0, 0, NULL, 0),
> +	SND_SOC_DAPM_OUT_DRV_E("ClassD", MT6660_REG_SYSTEM_CTRL, 2, 0,
> +			       NULL, 0, mt6660_codec_classd_event,
> +			       SND_SOC_DAPM_PRE_PMU | SND_SOC_DAPM_POST_PMU |
> +			       SND_SOC_DAPM_PRE_PMD | SND_SOC_DAPM_POST_PMD),
> +	SND_SOC_DAPM_OUTPUT("OUTP"),
> +	SND_SOC_DAPM_OUTPUT("OUTN"),
> +};
> +
> +static const struct snd_soc_dapm_route mt6660_component_dapm_routes[] = {
> +	{ "DAC", NULL, "aif_playback"},
> +	{ "PGA", NULL, "DAC"},
> +	{ "ClassD", NULL, "PGA"},
> +	{ "OUTP", NULL, "ClassD"},
> +	{ "OUTN", NULL, "ClassD"},
> +	{ "VI ADC", NULL, "ClassD"},
> +	{ "aif_capture", NULL, "VI ADC"},
> +};
> +
> +static int mt6660_component_put_volsw(struct snd_kcontrol *kcontrol,
> +				  struct snd_ctl_elem_value *ucontrol)
> +{
> +	struct snd_soc_component *component =
> +		snd_soc_kcontrol_component(kcontrol);
> +	int put_ret = 0;
> +
> +	pm_runtime_get_sync(component->dev);
> +	put_ret = snd_soc_put_volsw(kcontrol, ucontrol);
> +	if (put_ret < 0)
> +		return put_ret;
> +	pm_runtime_put(component->dev);
> +	return put_ret;
> +}
> +
> +static int mt6660_component_get_volsw(struct snd_kcontrol *kcontrol,
> +				  struct snd_ctl_elem_value *ucontrol)
> +{
> +	struct snd_soc_component *component =
> +		snd_soc_kcontrol_component(kcontrol);
> +	struct mt6660_chip *chip = (struct mt6660_chip *)
> +		snd_soc_component_get_drvdata(component);
> +	int ret = -EINVAL;
> +
> +	if (!strcmp(kcontrol->id.name, "Chip_Rev")) {
> +		ucontrol->value.integer.value[0] = chip->chip_rev & 0x0f;
> +		ret = 0;
> +	}
> +	return ret;
> +}
> +
> +static const DECLARE_TLV_DB_SCALE(vol_ctl_tlv, -1155, 5, 0);
> +
> +static const struct snd_kcontrol_new mt6660_component_snd_controls[] = {
> +	SOC_SINGLE_EXT_TLV("Digital Volume", MT6660_REG_VOL_CTRL, 0, 255,
> +			   1, snd_soc_get_volsw, mt6660_component_put_volsw,
> +			   vol_ctl_tlv),
> +	SOC_SINGLE_EXT("WDT Switch", MT6660_REG_WDT_CTRL, 7, 1, 0,
> +		       snd_soc_get_volsw, mt6660_component_put_volsw),
> +	SOC_SINGLE_EXT("Hard Clip Switch", MT6660_REG_HCLIP_CTRL, 8, 1, 0,
> +		       snd_soc_get_volsw, mt6660_component_put_volsw),
> +	SOC_SINGLE_EXT("Clip Switch", MT6660_REG_SPS_CTRL, 0, 1, 0,
> +		       snd_soc_get_volsw, mt6660_component_put_volsw),
> +	SOC_SINGLE_EXT("BoostMode", MT6660_REG_BST_CTRL, 0, 3, 0,
> +		       snd_soc_get_volsw, mt6660_component_put_volsw),
> +	SOC_SINGLE_EXT("DRE Switch", MT6660_REG_DRE_CTRL, 0, 1, 0,
> +		       snd_soc_get_volsw, mt6660_component_put_volsw),
> +	SOC_SINGLE_EXT("DC_Protect Switch",
> +		MT6660_REG_DC_PROTECT_CTRL, 3, 1, 0,
> +		snd_soc_get_volsw, mt6660_component_put_volsw),
> +	SOC_SINGLE_EXT("audio input selection", MT6660_REG_DATAO_SEL, 6, 3, 0,
> +		       snd_soc_get_volsw, mt6660_component_put_volsw),
> +	SOC_SINGLE_EXT("Data Output Left Channel Selection",
> +		       MT6660_REG_DATAO_SEL, 3, 7, 0,
> +		       snd_soc_get_volsw, mt6660_component_put_volsw),
> +	SOC_SINGLE_EXT("Data Output Right Channel Selection",
> +		       MT6660_REG_DATAO_SEL, 0, 7, 0,
> +		       snd_soc_get_volsw, mt6660_component_put_volsw),
> +	/* for debug purpose */
> +	SOC_SINGLE_EXT("HPF AUD IN Switch", MT6660_REG_HPF_CTRL, 0, 1, 0,
> +		       snd_soc_get_volsw, mt6660_component_put_volsw),
> +	SOC_SINGLE_EXT("AUD LOOP BACK Switch", MT6660_REG_PATH_BYPASS, 4, 1, 0,
> +		       snd_soc_get_volsw, mt6660_component_put_volsw),
> +	SOC_SINGLE_EXT("Mute Switch", MT6660_REG_SYSTEM_CTRL, 1, 1, 0,
> +		       snd_soc_get_volsw, mt6660_component_put_volsw),
> +	SOC_SINGLE_EXT("Bypass CS Comp Switch", MT6660_REG_PATH_BYPASS, 2, 1, 0,
> +		       snd_soc_get_volsw, mt6660_component_put_volsw),
> +	SOC_SINGLE_EXT("T0 SEL", MT6660_REG_CALI_T0, 0, 7, 0,
> +		       snd_soc_get_volsw, NULL),
> +	SOC_SINGLE_EXT("Chip Rev", SND_SOC_NOPM, 0, 16, 0,
> +		       mt6660_component_get_volsw, NULL),
> +};
> +
> +static int mt6660_component_probe(struct snd_soc_component *component)
> +{
> +	struct mt6660_chip *chip = snd_soc_component_get_drvdata(component);
> +	int ret = 0;
> +
> +	pr_info("%s\n", __func__);
> +	//snd_soc_component_init_regmap(component, chip->regmap);
> +
> +	/* init chip setting */
> +	ret = mt6660_component_init_setting(component);
> +	if (ret < 0)
> +		dev_err(chip->dev, "chip i2c init setting fail\n");
> +
> +	return ret;
> +}
> +
> +static void mt6660_component_remove(struct snd_soc_component *component)
> +{
> +	pr_info("%s\n", __func__);
> +	snd_soc_component_exit_regmap(component);
> +}
> +
> +static const struct snd_soc_component_driver mt6660_component_driver = {
> +	.probe = mt6660_component_probe,
> +	.remove = mt6660_component_remove,
> +	.read = mt6660_component_io_read,
> +	.write = mt6660_component_io_write,
> +
> +	.controls = mt6660_component_snd_controls,
> +	.num_controls = ARRAY_SIZE(mt6660_component_snd_controls),
> +	.dapm_widgets = mt6660_component_dapm_widgets,
> +	.num_dapm_widgets = ARRAY_SIZE(mt6660_component_dapm_widgets),
> +	.dapm_routes = mt6660_component_dapm_routes,
> +	.num_dapm_routes = ARRAY_SIZE(mt6660_component_dapm_routes),
> +
> +	.set_bias_level = mt6660_component_set_bias_level,
> +	.idle_bias_on = false, /* idle_bias_off = true */
> +};
> +
> +static int mt6660_component_aif_hw_params(struct snd_pcm_substream *substream,
> +	struct snd_pcm_hw_params *hw_params, struct snd_soc_dai *dai)
> +{
> +	int word_len = params_physical_width(hw_params);
> +	int aud_bit = params_width(hw_params);
> +	u16 reg_data = 0;
> +	int ret = 0;
> +
> +	dev_dbg(dai->dev, "%s: ++\n", __func__);
> +	dev_dbg(dai->dev, "format: 0x%08x\n", params_format(hw_params));
> +	dev_dbg(dai->dev, "rate: 0x%08x\n", params_rate(hw_params));
> +	dev_dbg(dai->dev, "word_len: %d, aud_bit: %d\n", word_len, aud_bit);
> +	if (word_len > 32 || word_len < 16) {
> +		dev_err(dai->dev, "not supported word length\n");
> +		return -ENOTSUPP;
> +	}
> +	switch (aud_bit) {
> +	case 16:
> +		reg_data = 3;
> +		break;
> +	case 18:
> +		reg_data = 2;
> +		break;
> +	case 20:
> +		reg_data = 1;
> +		break;
> +	case 24:
> +	case 32:
> +		reg_data = 0;
> +		break;
> +	default:
> +		return -ENOTSUPP;
> +	}
> +	ret = snd_soc_component_update_bits(dai->component,
> +		MT6660_REG_SERIAL_CFG1, 0xc0, (reg_data << 6));
> +	if (ret < 0) {
> +		dev_err(dai->dev, "config aud bit fail\n");
> +		return ret;
> +	}
> +	ret = snd_soc_component_update_bits(dai->component,
> +		MT6660_REG_TDM_CFG3, 0x3f0, word_len << 4);
> +	if (ret < 0) {
> +		dev_err(dai->dev, "config word len fail\n");
> +		return ret;
> +	}
> +	dev_dbg(dai->dev, "%s: --\n", __func__);
> +	return 0;
> +}
> +
> +static const struct snd_soc_dai_ops mt6660_component_aif_ops = {
> +	.hw_params = mt6660_component_aif_hw_params,
> +};
> +
> +#define STUB_RATES	SNDRV_PCM_RATE_8000_192000
> +#define STUB_FORMATS	(SNDRV_PCM_FMTBIT_S16_LE | \
> +			SNDRV_PCM_FMTBIT_U16_LE | \
> +			SNDRV_PCM_FMTBIT_S24_LE | \
> +			SNDRV_PCM_FMTBIT_U24_LE | \
> +			SNDRV_PCM_FMTBIT_S32_LE | \
> +			SNDRV_PCM_FMTBIT_U32_LE)
> +
> +static struct snd_soc_dai_driver mt6660_codec_dai = {
> +	.name = "mt6660-aif",
> +	.playback = {
> +		.stream_name	= "aif_playback",
> +		.channels_min	= 1,
> +		.channels_max	= 2,
> +		.rates		= STUB_RATES,
> +		.formats	= STUB_FORMATS,
> +	},
> +	.capture = {
> +		.stream_name	= "aif_capture",
> +		.channels_min	= 1,
> +		.channels_max	= 2,
> +		.rates = STUB_RATES,
> +		.formats = STUB_FORMATS,
> +	},
> +	/* dai properties */
> +	.symmetric_rates = 1,
> +	.symmetric_channels = 1,
> +	.symmetric_samplebits = 1,
> +	/* dai operations */
> +	.ops = &mt6660_component_aif_ops,
> +};
> +
> +static inline int _mt6660_chip_id_check(struct mt6660_chip *chip)
> +{
> +	u8 id[2] = {0};
> +	int ret = 0;
> +
> +	ret = i2c_smbus_read_i2c_block_data(chip->i2c, MT6660_REG_DEVID, 2, id);
> +	if (ret < 0)
> +		return ret;
> +	ret = (id[0] << 8) + id[1];
> +	ret &= 0x0ff0;
> +	if (ret != 0x00e0 && ret != 0x01e0)
> +		return -ENODEV;
> +	return ret;
> +}
> +
> +static inline int _mt6660_chip_sw_reset(struct mt6660_chip *chip)
> +{
> +	int ret;
> +
> +	/* turn on main pll first, then trigger reset */
> +	ret = regmap_write(chip->regmap, 0x03, 0x00);
> +	if (ret < 0)
> +		return ret;
> +	ret = regmap_write(chip->regmap, MT6660_REG_SYSTEM_CTRL, 0x80);
> +	msleep(30);
> +	return 0;
> +}
> +
> +static inline int _mt6660_chip_power_on(struct mt6660_chip *chip, int on_off)
> +{
> +	u8 reg_data = 0;
> +	int ret = 0;
> +
> +	ret = i2c_smbus_read_byte_data(chip->i2c, MT6660_REG_SYSTEM_CTRL);
> +	if (ret < 0)
> +		return ret;
> +	reg_data = (u8)ret;
> +	if (on_off)
> +		reg_data &= (~0x01);
> +	else
> +		reg_data |= 0x01;
> +	return regmap_write(chip->regmap, MT6660_REG_SYSTEM_CTRL, reg_data);
> +}
> +
> +static inline int _mt6660_read_chip_revision(struct mt6660_chip *chip)
> +{
> +	u8 reg_data[2] = {0};
> +	int ret = 0;
> +
> +	ret = i2c_smbus_read_i2c_block_data(
> +		chip->i2c, MT6660_REG_DEVID, 2, reg_data);
> +	if (ret < 0) {
> +		dev_err(chip->dev, "get chip revision fail\n");
> +		return ret;
> +	}
> +	chip->chip_rev = reg_data[1];
> +	return 0;
> +}
> +
> +static int mt6660_i2c_probe(struct i2c_client *client,
> +			    const struct i2c_device_id *id)
> +{
> +	struct mt6660_chip *chip = NULL;
> +	int ret = 0;
> +
> +	pr_info("%s start\n", __func__);
> +	chip = devm_kzalloc(&client->dev, sizeof(*chip), GFP_KERNEL);
> +	if (!chip)
> +		return -ENOMEM;
> +	chip->i2c = client;
> +	chip->dev = &client->dev;
> +	mutex_init(&chip->io_lock);
> +	i2c_set_clientdata(client, chip);
> +
> +	chip->regmap = devm_regmap_init(&client->dev,
> +		NULL, chip, &mt6660_regmap_config);
> +	if (IS_ERR(chip->regmap)) {
> +		ret = PTR_ERR(chip->regmap);
> +		dev_err(&client->dev, "failed to initialise regmap: %d\n", ret);
> +		return ret;
> +	}
> +
> +#if GENERIC_DEBUGFS
> +	/* debugfs interface */
> +	chip->dbg_info.dirname = devm_kasprintf(&client->dev,
> +						GFP_KERNEL, "MT6660.%s",
> +						dev_name(&client->dev));
> +	chip->dbg_info.devname = dev_name(&client->dev);
> +	chip->dbg_info.typestr = devm_kasprintf(&client->dev,
> +						GFP_KERNEL, "I2C,MT6660");
> +	chip->dbg_info.io_drvdata = chip;
> +	chip->dbg_info.io_read = mt6660_dbg_io_read;
> +	chip->dbg_info.io_write = mt6660_dbg_io_write;
> +
> +	ret = generic_debugfs_init(&chip->dbg_info);
> +	if (ret < 0) {
> +		dev_err(&client->dev, "generic dbg init fail\n");
> +		return -EINVAL;
> +	}
> +#endif /* GENERIC_DEBUGFS */
> +
> +	/* chip reset first */
> +	ret = _mt6660_chip_sw_reset(chip);
> +	if (ret < 0) {
> +		dev_err(chip->dev, "chip reset fail\n");
> +		goto probe_fail;
> +	}
> +	/* chip power on */
> +	ret = _mt6660_chip_power_on(chip, 1);
> +	if (ret < 0) {
> +		dev_err(chip->dev, "chip power on 2 fail\n");
> +		goto probe_fail;
> +	}
> +	/* chip devid check */
> +	ret = _mt6660_chip_id_check(chip);
> +	if (ret < 0) {
> +		dev_err(chip->dev, "chip id check fail\n");
> +		goto probe_fail;
> +	}
> +	/* chip revision get */
> +	ret = _mt6660_read_chip_revision(chip);
> +	if (ret < 0) {
> +		dev_err(chip->dev, "read chip revision fail\n");
> +		goto probe_fail;
> +	}
> +	pm_runtime_set_active(chip->dev);
> +	pm_runtime_enable(chip->dev);
> +
> +	ret = devm_snd_soc_register_component(chip->dev,
> +					       &mt6660_component_driver,
> +					       &mt6660_codec_dai, 1);
> +	pr_info("%s end, ret = %d\n", __func__, ret);
> +	return ret;
> +probe_fail:
> +	_mt6660_chip_power_on(chip, 0);
> +	mutex_destroy(&chip->io_lock);
> +	return ret;
> +}
> +
> +static int mt6660_i2c_remove(struct i2c_client *client)
> +{
> +	struct mt6660_chip *chip = i2c_get_clientdata(client);
> +
> +	pm_runtime_disable(chip->dev);
> +	pm_runtime_set_suspended(chip->dev);
> +#if GENERIC_DEBUGFS
> +	generic_debugfs_exit(&chip->dbg_info);
> +#endif /* GENERIC_DEBUGFS */
> +	mutex_destroy(&chip->io_lock);
> +	return 0;
> +}
> +
> +static int __maybe_unused mt6660_i2c_runtime_suspend(struct device *dev)
> +{
> +	struct mt6660_chip *chip = dev_get_drvdata(dev);
> +
> +	dev_dbg(dev, "enter low power mode\n");
> +	return regmap_update_bits(chip->regmap,
> +		MT6660_REG_SYSTEM_CTRL, 0x01, 0x01);
> +}
> +
> +static int __maybe_unused mt6660_i2c_runtime_resume(struct device *dev)
> +{
> +	struct mt6660_chip *chip = dev_get_drvdata(dev);
> +
> +	dev_dbg(dev, "exit low power mode\n");
> +	return regmap_update_bits(chip->regmap,
> +		MT6660_REG_SYSTEM_CTRL, 0x01, 0x00);
> +}
> +
> +static const struct dev_pm_ops mt6660_dev_pm_ops = {
> +	SET_RUNTIME_PM_OPS(mt6660_i2c_runtime_suspend,
> +			   mt6660_i2c_runtime_resume, NULL)
> +};
> +
> +static const struct of_device_id __maybe_unused mt6660_of_id[] = {
> +	{ .compatible = "mediatek,mt6660",},
> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, mt6660_of_id);
> +
> +static const struct i2c_device_id mt6660_i2c_id[] = {
> +	{"mt6660", 0 },
> +	{},
> +};
> +MODULE_DEVICE_TABLE(i2c, mt6660_i2c_id);
> +
> +static struct i2c_driver mt6660_i2c_driver = {
> +	.driver = {
> +		.name = "mt6660",
> +		.of_match_table = of_match_ptr(mt6660_of_id),
> +		.pm = &mt6660_dev_pm_ops,
> +	},
> +	.probe = mt6660_i2c_probe,
> +	.remove = mt6660_i2c_remove,
> +	.id_table = mt6660_i2c_id,
> +};
> +module_i2c_driver(mt6660_i2c_driver);
> +
> +MODULE_AUTHOR("Jeff Chang <jeff_chang@richtek.com>");
> +MODULE_DESCRIPTION("MT6660 SPKAMP Driver");
> +MODULE_LICENSE("GPL");
> +MODULE_VERSION("1.0.7_G");
> diff --git a/sound/soc/codecs/mt6660.h b/sound/soc/codecs/mt6660.h
> new file mode 100644
> index 0000000..9e62dcc
> --- /dev/null
> +++ b/sound/soc/codecs/mt6660.h
> @@ -0,0 +1,95 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (c) 2019 MediaTek Inc.
> + */
> +
> +#ifndef __SND_SOC_MT6660_H
> +#define __SND_SOC_MT6660_H
> +
> +#include <linux/mutex.h>
> +#include <linux/regmap.h>
> +
> +#define GENERIC_DEBUGFS	0
> +
> +#if GENERIC_DEBUGFS
> +struct dbg_internal {
> +	struct dentry *rt_root;
> +	struct dentry *ic_root;
> +	bool rt_dir_create;
> +	struct mutex io_lock;
> +	u16 reg;
> +	u16 size;
> +	u16 data_buffer_size;
> +	void *data_buffer;
> +};
> +
> +struct dbg_info {
> +	const char *dirname;
> +	const char *devname;
> +	const char *typestr;
> +	void *io_drvdata;
> +	int (*io_read)(void *drvdata, u16 reg, void *val, u16 size);
> +	int (*io_write)(void *drvdata, u16 reg, const void *val, u16 size);
> +	struct dbg_internal internal;
> +};
> +#endif /* GENERIC_DEBUGFS */
> +
> +struct mt6660_chip {
> +	struct i2c_client *i2c;
> +	struct device *dev;
> +	struct platform_device *param_dev;
> +	struct mutex io_lock;
> +#if GENERIC_DEBUGFS
> +	struct dbg_info dbg_info;
> +#endif /* GENERIC_DEBUGFS */
> +	struct regmap *regmap;
> +	u16 chip_rev;
> +};
> +
> +#define MT6660_REG_DEVID		(0x00)
> +#define MT6660_REG_SYSTEM_CTRL		(0x03)
> +#define MT6660_REG_IRQ_STATUS1		(0x05)
> +#define MT6660_REG_ADDA_CLOCK		(0x07)
> +#define MT6660_REG_SERIAL_CFG1		(0x10)
> +#define MT6660_REG_DATAO_SEL		(0x12)
> +#define MT6660_REG_TDM_CFG3		(0x15)
> +#define MT6660_REG_HPF_CTRL		(0x18)
> +#define MT6660_REG_HPF1_COEF		(0x1A)
> +#define MT6660_REG_HPF2_COEF		(0x1B)
> +#define MT6660_REG_PATH_BYPASS		(0x1E)
> +#define MT6660_REG_WDT_CTRL		(0x20)
> +#define MT6660_REG_HCLIP_CTRL		(0x24)
> +#define MT6660_REG_VOL_CTRL		(0x29)
> +#define MT6660_REG_SPS_CTRL		(0x30)
> +#define MT6660_REG_SIGMAX		(0x33)
> +#define MT6660_REG_CALI_T0		(0x3F)
> +#define MT6660_REG_BST_CTRL		(0x40)
> +#define MT6660_REG_PROTECTION_CFG	(0x46)
> +#define MT6660_REG_DA_GAIN		(0x4c)
> +#define MT6660_REG_AUDIO_IN2_SEL	(0x50)
> +#define MT6660_REG_SIG_GAIN		(0x51)
> +#define MT6660_REG_PLL_CFG1		(0x60)
> +#define MT6660_REG_DRE_CTRL		(0x68)
> +#define MT6660_REG_DRE_THDMODE		(0x69)
> +#define MT6660_REG_DRE_CORASE		(0x6B)
> +#define MT6660_REG_PWM_CTRL		(0x70)
> +#define MT6660_REG_DC_PROTECT_CTRL	(0x74)
> +#define MT6660_REG_ADC_USB_MODE		(0x7c)
> +#define MT6660_REG_INTERNAL_CFG		(0x88)
> +#define MT6660_REG_RESV0		(0x98)
> +#define MT6660_REG_RESV1		(0x99)
> +#define MT6660_REG_RESV2		(0x9A)
> +#define MT6660_REG_RESV3		(0x9B)
> +#define MT6660_REG_RESV6		(0xA2)
> +#define MT6660_REG_RESV7		(0xA3)
> +#define MT6660_REG_RESV10		(0xB0)
> +#define MT6660_REG_RESV11		(0xB1)
> +#define MT6660_REG_RESV16		(0xB6)
> +#define MT6660_REG_RESV17		(0xB7)
> +#define MT6660_REG_RESV19		(0xB9)
> +#define MT6660_REG_RESV21		(0xBB)
> +#define MT6660_REG_RESV23		(0xBD)
> +#define MT6660_REG_RESV31		(0xD3)
> +#define MT6660_REG_RESV40		(0xE0)
> +
> +#endif /* __SND_SOC_MT6660_H */
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
