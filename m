Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE071B1BFE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 04:37:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VyZCL8KXX/XGtbLU/SgGSueA4UT3xet83I0PwEM46Dg=; b=oo3YO77ffg1oyhaYqRSEMOIDp
	X+SsadZJu8KQNXQ3KobEr8cpZHUkwfr4SSqQKAejvHJu9ie1LrE9fr541X6Z9c1enKhciwQsp2tAf
	BAXu1vfj3Ah0O9Gezh+d96OCxx+FyK6t5gEcyZiH83HALSKAofOZrPv1N3h9oG4QigzMkOZ0SkEEH
	yR4ByOvbYVQaT95p9I50BJt7oFuczppL43XZ7nCcUDZ04yuM/CGe+LXg8gM5u94TeEMvqFlNwDI9N
	4FWpInATzt+hDRvBSGEdRe+BWdxqELIe7/Sn0C5A4m1aSKp0OlncpdCfJvUHJAzOw944DAKp1VUHn
	64c64vS1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQimn-0003jS-HP; Tue, 21 Apr 2020 02:37:21 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQimd-0003hr-Hd; Tue, 21 Apr 2020 02:37:13 +0000
Received: by mail-ed1-x544.google.com with SMTP id w2so9115460edx.4;
 Mon, 20 Apr 2020 19:37:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=wfjIAKV3CzN2ahQVF5QQ7qnHBO9rsV9xDFuglbIYlvo=;
 b=ePqxLPQpEgCKHMylYI58HlD8/cm9VNW5FPOSETx1OcR1+SmzgCaSSbuvVi8em6SgPX
 /vk71YJnaBWoVN2KWdJFcQdLMlp8QaPEtL3XT2g0Ha/t7jMhHlptiTsxMjJ73sv8AULl
 TGkfouaOnEYkzihEu2Ln6B+0iQvN1VeXhWja7oz8lJ+Iy2N+UI34KCG6N4SufASF1BbH
 QqjJm+G6nJh+nUAZ/oKJS8B7ncIwR5sim9M+/BeODFxTxk+L7Orff90XH53EmdYlYFuG
 TsYPZLcWIp6Ycoiw9Nc8z/1Wn/rkDaOD0m6DTWWse67H2GwP3U50UsqXUqlpWW+N2Nbg
 0k7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wfjIAKV3CzN2ahQVF5QQ7qnHBO9rsV9xDFuglbIYlvo=;
 b=MUmiQFcspsxDN6pxf8Z1zv9Av2fWX3YfvAl3jL/KBovF6LSfB4hHWYQhAhDWHLTrMl
 VYkFy+JTJJ3ky3mNRSqd8izGozaltNUThJ+3mpHpGYPc3xov+2bgKEpd7pFr5pR0dWeN
 0HOh7eSARuy6qVr/bbdACA8mD557ZuLWEmjrTOY/7ReS5LGRRI0Afrim3LlCS/nYeTB8
 iacO3nj94o52cqEVqIkMS7btGcqkSJN5DkCDmiAkhaxGkwnMsEOEwucFIYwbiBsoGFCm
 Mh92p2VGP3szU+zE1EOjyWSINDQeO2tq420NYQs7QEQeVgDJLsR3F/VpahwkbaV7Ehze
 rQxw==
X-Gm-Message-State: AGi0PubMrVg5W5IWHeARY1QZPCPF+T3BX9dm98ipNT7yzmCWHZQL0LVe
 1RtT/auaK7aD3R/n3eoQ3Pg=
X-Google-Smtp-Source: APiQypJhXdwWOerhgYAN5dOVFSby+3Mbee+FNPtzk+Uk3eZXjRSCcip4tP0F0bwdHDDzezV9TrpUdA==
X-Received: by 2002:a50:b263:: with SMTP id o90mr16161876edd.326.1587436628433; 
 Mon, 20 Apr 2020 19:37:08 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 z18sm253309ejl.37.2020.04.20.19.37.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Apr 2020 19:37:07 -0700 (PDT)
Subject: Re: [PATCH v2 0/2] Add a watchdog driver that uses ARM Secure Monitor
 Calls.
To: Evan Benn <evanbenn@chromium.org>
References: <20200403052900.258855-1-evanbenn@chromium.org>
 <CAKz_xw0gV+w_gMkLfB4qUBdULLfFoiv1TBWp9_PHy33wP_XWyA@mail.gmail.com>
 <890948ef-7276-fdae-d270-eb30eff3eab2@amlogic.com>
 <243e107c-35c1-2d14-5285-c9e13744963c@amlogic.com>
 <CAODwPW9RSB37+4EJ2QXAwz=ShFB23L1GKC2mLYE5L5JuQR2tPw@mail.gmail.com>
 <20200415231215.GA182398@roeck-us.net>
 <CAKz_xw0+gKBM1jp-Avnd+4j9vSxUix67RZBX-NNbStb0+ri4+Q@mail.gmail.com>
 <CAODwPW9Vt7TcWfKYDmRgLndb2-+5HoNvA6XMJJznXCudQDngqw@mail.gmail.com>
 <9d029a04-2a37-cbbe-1932-be34d34f6b69@gmail.com>
 <CAKz_xw33YBChSCDHcki2JCR=LXrvfEN2pseEN471xVvqhqrUfA@mail.gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <d1fe9a51-d180-a4f4-7af4-b8edbf3c6f29@gmail.com>
Date: Mon, 20 Apr 2020 19:36:58 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAKz_xw33YBChSCDHcki2JCR=LXrvfEN2pseEN471xVvqhqrUfA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_193711_615799_88FC5DF5 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Yonghui Yu <yonghui.yu@amlogic.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 Will Deacon <will@kernel.org>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Rob Herring <robh@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Anson Huang <Anson.Huang@nxp.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Olof Johansson <olof@lixom.net>, Julius Werner <jwerner@chromium.org>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/20/2020 6:08 PM, Evan Benn wrote:
> Thanks Florian,
> 
>> The PSCI binding itself has provision for specifying function IDs for
>> different functions, and this seems to be followed by other subsystems
>> as well like SCMI:
>>
>> https://www.spinics.net/lists/arm-kernel/msg791270.html
> 
> Are you referring to this line in the devicetree linked?
> 
> +- arm,smc-id : SMC id required when using smc or hvc transports
> 
> I cannot find any prior definition of this in the devicetree yaml
> format, so I will add that as well.
> Did you have a link for the psci usage that you referenced?

Sure, line 80 and below from psci.yaml:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/arm/psci.yaml#n80
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
