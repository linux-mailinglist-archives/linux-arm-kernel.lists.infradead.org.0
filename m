Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52292186104
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 01:55:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vYnPjsSbSZvkp/Zg7LYjAm0em5GOJz1N6qxtWmLYNHk=; b=sSdHmniSXJ2f+f
	PRp6fZld6UNhFNrzGEpWNH6DdQ9gXpzczGQE+Sk0DLglO8L3C5FJOSyYK75r6cvWFnDI0psJXZ+eT
	m1NQ0Th33064JQH9CMHQCHLN7haBOVVZspybHhYV4BEGgHADyRMKrJfeL/bIfn4uXghgtYw5OZnnu
	1g4614WnwS5wW2fUqbUGswdwvk6YO/jVWuwHnl2HJ3Nq3wobx/ORMA0iCAAAV8YUkw5r38hKRRciL
	zrVmKDwpCLgXg76IY0wOu0/3y4612eBaBKFyyVspSkdP2teol8VfNQ9SsjT9BI2T0+58i7ZLQM2+5
	UB6UMVh8hfUed2zlBXFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDe2G-0008Ln-J5; Mon, 16 Mar 2020 00:55:16 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDe1y-0008LR-Dj
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 00:54:59 +0000
Received: by mail-pf1-x441.google.com with SMTP id x2so8599533pfn.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Mar 2020 17:54:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=l0qmOxdqX1nW/qFZPdxrMZvAk0D8TX/V3Ec6RzZdECs=;
 b=FrABb7c3sVv/3OhHg+ps0HjMgcbJjfxfvqt01l49mOqMwIOlOaGna6Bp2tq1oY/eTY
 gXGDotAq0xG3wHtr0aGy5tyAlXqZnDopbi+kpNY95T+JS2ghujNujJo1mybVS+Ru7nAq
 2qcTfD0q5kZK9ppu0zjBlJAwkt7K8wdX0IrB6WsA92cJdd1awlW0zQ6zHPaHdpt7tTNH
 BWQ7U5kQzLaB7TbYJ+FPAtISmMzRO3WSmW8QMcojodk8u1ZoPcuUS8PLFUJjKs8RGAnA
 7kCkKzbLk4jJte1y7RPPeMChM+phIYijKX8FDlqiyChe3Xtrgjmh83x34KnaFsnQ9nLm
 yMtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=l0qmOxdqX1nW/qFZPdxrMZvAk0D8TX/V3Ec6RzZdECs=;
 b=ObiRifAEFBpGdvKXmT7lJglQpfoV5rdopvHJYBnZKVrcaRkWM9nIxLsfxoj7sCVQ7h
 b2/mX0lpjdlmvpB6O751VLpC47KeAJHu1Q2iHuiE0zCxFe3BngctFaunqMi8aqOHUvsT
 aQnP2WrxsYXYUq6cNE8JchWBgkQbgE2LCzK0umD6oL7DivgHOA+n1QMEHUJtwJKtdC5p
 3nLndDsBso92gPu1V9LDhNRgms9SkEpHWlWa8oprQFnURSqVrV79aPpAIn+9Ac/mYXFa
 wfvf9cNT+pFk2g4jSacn2RnOqyVt7isaBxRJOavdI48enp0yEztjLtmXoWR9BzeMpwjY
 Onhg==
X-Gm-Message-State: ANhLgQ1+l3pWM4T4AEkYp5exlfGf0S4FwmGU6Bp2X11oybgg+Nw4Tx0k
 n0Igwl28FEnN2UIWLMynYIYlVZ8o
X-Google-Smtp-Source: ADFU+vsRGDautlz2/kcu5bpFe/pA7fqWL3oUrwwmVaRzjtaPtQ2PCGewm7UnWzlpiMLFOrzzPZXz9g==
X-Received: by 2002:a62:8343:: with SMTP id h64mr18388787pfe.166.1584320096949; 
 Sun, 15 Mar 2020 17:54:56 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 j21sm17597179pji.13.2020.03.15.17.54.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 15 Mar 2020 17:54:55 -0700 (PDT)
Subject: Re: [PATCH V2 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
To: Shawn Guo <shawnguo@kernel.org>, Anson Huang <Anson.Huang@nxp.com>
References: <1583544359-515-1-git-send-email-Anson.Huang@nxp.com>
 <20200316002803.GL29269@dragon>
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
Message-ID: <6bc06056-b614-fbbf-037c-4a98bafa591c@roeck-us.net>
Date: Sun, 15 Mar 2020 17:54:52 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200316002803.GL29269@dragon>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_175458_491259_17F167DB 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: alexandre.belloni@bootlin.com, m.felsch@pengutronix.de,
 leonard.crestez@nxp.com, festevam@gmail.com, linux-rtc@vger.kernel.org,
 robh@kernel.org, amit.kucheria@verdurent.com, wim@linux-watchdog.org,
 daniel.lezcano@linaro.org, yuehaibing@huawei.com, krzk@kernel.org,
 Linux-imx@nxp.com, linux-input@vger.kernel.org, rui.zhang@intel.com,
 ronald@innovation.ch, linux-watchdog@vger.kernel.org, arnd@arndb.de,
 linux-pm@vger.kernel.org, s.hauer@pengutronix.de, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, daniel.baluta@nxp.com,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 a.zummo@towertech.it, gregkh@linuxfoundation.org, dmitry.torokhov@gmail.com,
 linux-kernel@vger.kernel.org, linux@rempel-privat.de, kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/15/20 5:28 PM, Shawn Guo wrote:
> On Sat, Mar 07, 2020 at 09:25:53AM +0800, Anson Huang wrote:
>> Add stubs for those i.MX SCU APIs to make those modules depending
>> on IMX_SCU can pass build when COMPILE_TEST is enabled.
>>
>> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> 
> Already had such a patch from Peng Fan.
> 

Did you follow the discussion and the conclusion that the only patch
really needed is patch 2/7 ?

Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
