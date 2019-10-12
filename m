Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2AA5D5091
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 17:01:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:In-Reply-To:
	Subject:To:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YBIcx29ubYJKrHuAQP712y37mX8hq+s2NxWstWADnuU=; b=nBx4ke+3lRYMA7un9euMl92ka
	NR6zFQpp7DYTi2dZgzE6TsNDgjOlOVYKG0PHGWU/jKUuh+bnyrdK6P4HDGKg1EnoRqiJyt4CkTO3c
	OJ00mYFSkQt7odGo+2MeRrPrDgsuBB13KSQzoPbHejoanOykAjUfIz1YFJC5DzVM+N+/b5bYtFopL
	JEUusC/L+uY7KUH0H42YTQaPLhf8AJVS0srwT4TtTW7Qxr1nyg+CqsjaF7JfEwjttvOqhpaHHBfm+
	8rUQO2WrDofebnNRxV/5NO/OVf9BhyO3gI07aYe/sMN4Gaq7DB3u9Ccz/cSuAmNwXv22df7dSQ0l1
	ttuLjB0PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJItb-00088g-Pc; Sat, 12 Oct 2019 15:01:27 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJItQ-00083a-J9; Sat, 12 Oct 2019 15:01:17 +0000
Received: by mail-wr1-x443.google.com with SMTP id y19so14898768wrd.3;
 Sat, 12 Oct 2019 08:01:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=wVHcI9lSX8uaanGOnUjTf6lBkgZpFUQiHj5D28R77UI=;
 b=Z40kAoLXOa7xNeMlvgjV/XN8StTUUqzxN+pH0LjQpN9c4e/UkTuBbt26vsmjr5uqRj
 4YMMxQ+eHT22lGwozUzw8P9hyw97FaX7Qj4RhdbFgjkNoQ+pIv6HTrJHiBvhcCu6aW/R
 D304+7rWRCWMSCd6OtCCLA0qvDiwwaLzYQl5Dri6dTMVMkxn+Oazp+4NFKYLfYKT2tK+
 lWp1UUUol393Oqr2L+PNLOC71Uv7Zp9kxH+tsvMbj0WT+5kecjiuSvRA1DwcLUreVE9S
 ubLwyURpWBG8OLEjGEqYG45IMtXOxhkdKxGQR4XlPWRiMxBdY8+jq/bMJO4lwV2N2YfT
 Ukgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=wVHcI9lSX8uaanGOnUjTf6lBkgZpFUQiHj5D28R77UI=;
 b=jmj60mZs8JYBmxVpXZonSQbVNHhdvDAVZq5Dij0eNZOYEiLg334br34ruys8XV6Hpa
 o+4fb/5kayi0dxUUrwBFpKvqpx/QIyTennTNRcF0vW7l8ZSJlC8mQgosDcVGIjw09A7T
 MDu93jSv9lEKiud6Datz2gN1OomWN6eRk2aSnz9qEFK/vf38/fVBMVprpB0vLI0IeB5C
 qokKln0o8xI11q4JQCtUn86rTFh/bMvw/ZTdbn6LcHbR+tgvUVRfN86TH6exlCHNsb+2
 jETjjlfsvtQqQkKjnRLZGN3eY3ux1rDS+lYJRz5X6fIgQ4psllv9BombJA5jhg40Y30e
 FjtA==
X-Gm-Message-State: APjAAAWolWDDBCu4Bg1jzD/uRY50FtCMBLoxj46jv4iA0C69mpyfERqX
 h6WbrVMHhLL0kIv6aM0+Zw==
X-Google-Smtp-Source: APXvYqyPqpqzbP3XnFoMi2/Pw8QbR40wew29pTMGd6u41ZdKzpdyoEoKHixDywvu/gSA1r4Y94rusw==
X-Received: by 2002:adf:bd8f:: with SMTP id l15mr17498773wrh.362.1570892473305; 
 Sat, 12 Oct 2019 08:01:13 -0700 (PDT)
Received: from ninjabhubz.org (host-2-102-13-201.as13285.net. [2.102.13.201])
 by smtp.gmail.com with ESMTPSA id
 u2sm5154279wml.44.2019.10.12.08.01.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 08:01:12 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
X-Google-Original-From: Jules Irenge <maxx@ninjahub.org>
Date: Sat, 12 Oct 2019 16:00:59 +0100 (BST)
To: Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: fix warning
 of Logical continuations should be on the previous line
In-Reply-To: <alpine.DEB.2.21.1910112336440.3284@hadrien>
Message-ID: <alpine.LFD.2.21.1910121551090.15982@ninjahub.org>
References: <20191011212745.20262-1-jbi.octave@gmail.com>
 <alpine.DEB.2.21.1910112336440.3284@hadrien>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_080116_632445_C5F9F235 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbi.octave[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.4 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
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
Cc: devel@driverdev.osuosl.org, Jules Irenge <jbi.octave@gmail.com>,
 f.fainelli@gmail.com, sbranden@broadcom.com, mchehab+samsung@kernel.org,
 outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, eric@anholt.net, daniela.mormocea@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 dave.stevenson@raspberrypi.org, rjui@broadcom.com, hverkuil-cisco@xs4all.nl,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Fri, 11 Oct 2019, Julia Lawall wrote:

>
>
> On Fri, 11 Oct 2019, Jules Irenge wrote:
>
>> Fix warning of logical continuations should be on the previous line.
>> Issue detected by checkpatch tool.
>
> There seem to be several changes mixed together in this patch.
>
> Don't have a subject line that is identical to a line in the log message.
> The subject line should be short.
>
> Keeping the arguments of && on the same line, but breaking the line after
> a == doesn't seem to be a good idea.  It would be better to have the left
> argument of == on one line and the right argument on another, if that is
> needed.
>
> julia
>

Apology,
Yesterday was my bday, I was reckless.
I am resending now. Please do not hesitate to give me a feedback if 
possible.
Thanks
Jules

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
