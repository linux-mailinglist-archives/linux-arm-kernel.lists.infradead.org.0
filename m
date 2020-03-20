Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1668818CF57
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 14:48:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZUo3n/a2JdJl/He3+axnrR69NGtY9jdUtk+Wm1NpAhw=; b=Z6g++/lb4rwna3
	afPyQbG6YhEKzN8uJW9IZzhqUL/clGi1yiMGlFJGa78Vx8l6ZO5RMUS3YvuoLl+mC4R/wGJjk+0+5
	PBHOmWvulroGiekJF0Oihg5qHzt24WS+KwzIkBYgrMVSJOY9JokbfcvMPvFZu238FSW1SQDdi+DB/
	t2jnSHeS2Mi6nl5inSXUe6k2LscZbIrN2kwuJcm4O7AFl60ReVM9AlG7RbqCvz0ywvrRh0wUpp04H
	zqCl+pFEwBvuniBuWPNNs43YIaBok8m2kVucqTF8Vya6DvV4QcQKfLnA50csm5U9EnUJ1V//qfiJj
	vpqxdE02blAA9//HG4EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFI06-0003hf-I8; Fri, 20 Mar 2020 13:47:50 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFHzy-0003h9-7l
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 13:47:43 +0000
Received: by mail-lj1-x242.google.com with SMTP id 19so6449722ljj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 06:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=VKSPPi2x0mbXha6B3vaNMiVE/+NX99D1XOzAsrquB48=;
 b=dpZ433uZCMyLV9BuifSS65mWNDp4jlV3JgsDhNikzqruARh3biods61O+sCMUKwaBX
 s21viKClAkIg946KchD2LshlQs2j2vKFuUXFyr8FZ+T3CItVomXlpmPYx8SYq7bfHOrP
 nvKHXHoca99fe90E/tTvWPNZjYdEuJuvC9YG1s1bNi1amXUHlRMNyxCNCQGtxZqm8KAS
 wk/USprwtCpWdkXsKhaPy9s2sjif4TZwF5Vi2jMWyyjLRJf7c/PaG0x2FqzOfrahFmc1
 nLx4jhYTLYkV/oqiLE+u7rBfyo4dx2doypx6E5GV2eJjl/PzXGzoRCwHE/lQx7PrTV7B
 O+Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VKSPPi2x0mbXha6B3vaNMiVE/+NX99D1XOzAsrquB48=;
 b=qpu6uvGMRqdbkdjus9sbJ5XRA5HYhKOjA+LTzwHr1sILjVdbXjUdO6x/mVAEyklkYu
 YrZPDKA9b5AM4tElnj3jm30ds2GIuMrJzV0n7S+QEbKdHLP9j/yOpdqpqZm6ZVPNuqxz
 pa9c1mCuWh2Ulc4TIhyyej8KhSHE5h6Y07dEljQW/GRa07zgpCEhsMXqwHoyWSgozx2f
 H7aSheCQh7zK46fYhqm90xbB/9zj0Pv1bR0bJz1VZIQWBJtJaNiik9swqMLeuMD5lJNd
 CYyqkxH5WOWK0t/t3RuPTyvyFZYIKBeDpeTuOnJvCLod73BcPHlbfu1AFW4O8uajnYn9
 3HmQ==
X-Gm-Message-State: ANhLgQ2plPsJO9yPavgxGx+AnHpK1AWClhY5nQ5GEY+bvPvPMd/ZYBDU
 dgeQMnPskXRTUl+MsRjjnYI=
X-Google-Smtp-Source: ADFU+vt99INuHz08C5tlxgS3OJpzPHJB8BSC8ImphUWjct0ql7XHffXwNeJN/9Vs2eF9A5fy0VNlCA==
X-Received: by 2002:a2e:9f0e:: with SMTP id u14mr5165941ljk.142.1584712060587; 
 Fri, 20 Mar 2020 06:47:40 -0700 (PDT)
Received: from [192.168.2.145] (94-29-39-224.dynamic.spd-mgts.ru.
 [94.29.39.224])
 by smtp.googlemail.com with ESMTPSA id d18sm3432544ljg.106.2020.03.20.06.47.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 20 Mar 2020 06:47:39 -0700 (PDT)
Subject: Re: [PATCH v2] ARM: boot: Obtain start of physical memory from DTB
To: Geert Uytterhoeven <geert@linux-m68k.org>
References: <CGME20200225112354eucas1p1300749b32c6809b6a22194c1a952a68c@eucas1p1.samsung.com>
 <20200127140716.15673-1-geert+renesas@glider.be>
 <d1b12473-5199-1cf6-25d1-a6ce79450e8e@samsung.com>
 <CAMuHMdUGu4eStpYp5W0SKJd8yrLLDTgF4__Jq_n+Z7SWtPM+Cg@mail.gmail.com>
 <90c006f2-8c13-2976-008f-37139ca49f37@gmail.com>
 <CAMuHMdVkhf+4CQwpf9tn3UfaMb=qoRRYS2XpwcgBMciTVmXjHA@mail.gmail.com>
 <75358399-c292-4e60-abdc-bd0729cf5c08@gmail.com>
 <CAMuHMdX9PH+WUvONz2C8D1fRrZXn5rEND-p_my2mYvoyxF_gWA@mail.gmail.com>
 <CAMuHMdVwxi57jMrVoH8P2ms0j9YrZvc1Zi+BVR3VDo8QJHaU-w@mail.gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <4e362c26-84b1-2f94-3659-ab9120927a12@gmail.com>
Date: Fri, 20 Mar 2020 16:47:38 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAMuHMdVwxi57jMrVoH8P2ms0j9YrZvc1Zi+BVR3VDo8QJHaU-w@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_064742_307817_A77431DA 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Nicolas Pitre <nico@fluxnic.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Russell King <linux@armlinux.org.uk>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 Eric Miao <eric.miao@nvidia.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MjAuMDMuMjAyMCAxNjo0MywgR2VlcnQgVXl0dGVyaG9ldmVuINC/0LjRiNC10YI6Ci4uLgo+IFdp
bGwgc2VuZCB2NCBzaG9ydGx5LgoKQXdlc29tZSwgSSdsbCB0ZXN0IHRoZSB2NC4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
