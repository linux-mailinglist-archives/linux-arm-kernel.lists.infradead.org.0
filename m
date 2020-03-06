Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B674C17C511
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 19:08:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MdLPecQ69z/owsRPsyI242ZiC+vpMyabxQ0VFrwDUFg=; b=PEFKctPx+ljGAt
	lPIdvjE4zzuJKdmJHwEkLHhmkfhx7SsnC0/XaP0sMBMY82nr0EaXjoFdG+pVJbGLf1k/iPiSYjYyt
	D3WF02s7SASwXjZOzMt8OfmE4bDDXpPJ0+w1SVCteSFqUpq2CHF/B0np8fDspRa4itbbHfDO62G80
	Eg2C62fwFRsAwKvPs12PV+jAHD1fqIHojMLKcYg8DYChOKXsP5VXTGjMk+EdP0iTxhNwopVmppSYi
	5Dm1YM5y8g6sC9/AQGRc2dKlGzgp9mcPULL26vYfENbIRJdwCntwHYUFxpOvTNKydKypCprHEjlaa
	hzblmqnsJoeK4WnDyOwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAHOT-0004gc-9L; Fri, 06 Mar 2020 18:08:17 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAHOM-0004gJ-7Q
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 18:08:11 +0000
Received: by mail-pg1-x541.google.com with SMTP id t3so1441331pgn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 10:08:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=uRRhoIexAhvoOgXcqq8b6k7wac3zPyn43UDEJ9y4pGA=;
 b=sjFW+gcecu4XZ6aJ447DsrKmCqUI0zgVQeNBvdQv/hO5MP7ciuCp1MKx9M1IqRzVE2
 YrA/7UWDzx8472Y4QSf6uTjO0JIISYSAfiL8CsjPes/g7wXNeksu8vD30r7vuK2jckrX
 N4jY0L32w8ia8XhsZf+Q4M52YmACcmzSPnGvexWFkPC0yKtmvyK1IzN36j1yIN0kw5X9
 oOi6z908IIIIN0x7OzF7aCCjfzVJSpRrBsP4yzi/e75f78VUmaPxF6uHuHofiLfWGnEC
 lgsrTEkHyiPT3sl/5PrEN8+wAn4HwK4NOoGwwAJedHvZxetXEz3XRSHR0S/UFSg3Om2q
 4rWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=uRRhoIexAhvoOgXcqq8b6k7wac3zPyn43UDEJ9y4pGA=;
 b=bp586D7NdoDxXz6/Xrqsu+8GHWLvMHYDBwjgwZG1K/35nMtvs9/mtVv5nlL3WWLeNf
 Exnm/xFTR5FQGAfe5i52Gzb8oFtk9Xa8rNgMKgqGoeAK13A7tY+g8tJ05oIjuno3cJBs
 I7kbDCOEXUtryDuU3WEylMMwOhhHkCBvKFDFhqMCq/iz1LzeY8K4y/0ok3OzBaQ5aEob
 j9SN/jXyberojLnPDH/6d2uddW0LUqXs0kY+Ykrpyhgs7RcaCZLp/tBTPMc9Qlo1JoKx
 s+9mVljN1jDdtCF/tkBUl46/xsoSk+ueHO1kO5ouahevSJ8bDRpw8qZ2cFwzwCBXdJoR
 3kcA==
X-Gm-Message-State: ANhLgQ0ppBFRAVg4qLsxUjwdyp0XMCGUYDXIKpsibrObySXEBdE3sW/y
 yAgliwHCOhVbhFHtvyXspfU=
X-Google-Smtp-Source: ADFU+vugFTSbG5KIJpgnnDcXPrPNxziAQAk2LyVAOTkN4qjlJnLJk15YosTEENl8Gk4T4ptV61Hwow==
X-Received: by 2002:a65:644c:: with SMTP id s12mr4404813pgv.165.1583518087733; 
 Fri, 06 Mar 2020 10:08:07 -0800 (PST)
Received: from [10.67.48.239] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id f4sm982055pfn.116.2020.03.06.10.08.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Mar 2020 10:08:07 -0800 (PST)
Subject: Re: [PATCH V4 2/2] firmware: arm_scmi: add smc/hvc transport
To: Sudeep Holla <sudeep.holla@arm.com>, Peng Fan <peng.fan@nxp.com>
References: <1583201219-15839-1-git-send-email-peng.fan@nxp.com>
 <1583201219-15839-3-git-send-email-peng.fan@nxp.com>
 <20200304103954.GA25004@bogus>
 <AM0PR04MB4481A6DB7339C22A848DAFC988E50@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <AM0PR04MB44814B71E92C02956F4BED4588E50@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200304170319.GB44525@bogus>
 <AM0PR04MB4481B90D03D1F68573B05BE088E20@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200305160613.GA53631@bogus>
 <d9734fd6-f855-296b-3a0b-ffc45ed0e3cb@gmail.com>
 <AM0PR04MB448167BD133BF57E548F2F0588E30@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200306123442.GA47929@bogus>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 G10n8gCguORqNGMsVRxrlLs7/himep7MrCc=
Message-ID: <7e4eee97-3ce7-a421-b08e-54092213dc7c@gmail.com>
Date: Fri, 6 Mar 2020 10:08:05 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200306123442.GA47929@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_100810_269034_794C51D4 
X-CRM114-Status: GOOD (  23.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/6/20 6:23 AM, Sudeep Holla wrote:
> On Fri, Mar 06, 2020 at 08:07:19AM +0000, Peng Fan wrote:
>>> Subject: Re: [PATCH V4 2/2] firmware: arm_scmi: add smc/hvc transport
>>>
>>> On 3/5/20 8:06 AM, Sudeep Holla wrote:
>>>> On Thu, Mar 05, 2020 at 11:25:35AM +0000, Peng Fan wrote:
>>>>
>>>> [...]
>>>>
>>>>>>
>>>>>> Yes, this may fix the issue. However I would like to know if we need
>>>>>> to support multiple channels/shared memory simultaneously. It is
>>>>>> fair requirement and may need some work which should be fine.
>>>>>
>>>>> Do you have any suggestions? Currently I have not worked out an good
>>>>> solution.
>>>>>
>>>>
>>>> TBH, I haven't given it a much thought. I would like to know if people
>>>> are happy with just one SMC channel for SCMI or do they need more ?
>>>> If they need it, we can try to solve it. Otherwise, what you have will
>>>> suffice IMO.
>>>
>>> On our platforms we have one channel/shared memory area/mailbox
>>> instance for all standard SCMI protocols, and we have a separate
>>> channel/shared memory area/mailbox driver instance for a proprietary one.
>>> They happen to have difference throughput requirements, hence the split.
>>>
> 
> OK, when you refer proprietary protocol, do you mean outside the scope of
> SCMI ? The reason I ask is SCMI allows vendor specific protocols and if
> you are using other channel for that, it still make sense to add
> multi-channel support here.

Sorry this was not clear, I meant a protocol ID which is in the 0x80 -
0xFF range. We are using one pair of channels (rx and tx) plus shared
memory area for the standard SCMI protocol numbers, and we have another
pair of rx/tx channels and shared memory area for this vendor specific
protocol.

Maybe providing the Device Tree entries would be clearer, so this is
what it looks like (this is the output from the bootloader generated
Device Tree):


/       brcm_scmi_mailbox@0 {
                #mbox-cells = <0x1>;
                compatible = "brcm,brcmstb-mbox";
                status = "disabled";
                linux,phandle = <0xe>;
                phandle = <0xe>;
        };

        brcm_scmi@0 {
                compatible = "arm,scmi";
                mboxes = <0xe 0x0 0xe 0x1>;
                mbox-names = "tx", "rx";
                shmem = <0xf>;
                status = "disabled";
                #address-cells = <0x1>;
                #size-cells = <0x0>;

                protocol@13 {
                        reg = <0x13>;
                };

                protocol@14 {
                        reg = <0x14>;
                        #clock-cells = <0x1>;
                        linux,phandle = <0x3>;
                        phandle = <0x3>;
                };

                protocol@15 {
                        reg = <0x15>;
                        #sensor-cells = <0x1>;
                        #thermal-sensor-cells = <0x1>;
                        linux,phandle = <0x12>;
                        phandle = <0x12>;
                };

                protocol@80 {
                        reg = <0x80>;
                };
        };

        brcm_scmi_mailbox@1 {
                #mbox-cells = <0x1>;
                compatible = "brcm,brcmstb-mbox";
                status = "disabled";
                linux,phandle = <0x10>;
                phandle = <0x10>;
        };

        brcm_scmi@1 {
                compatible = "arm,scmi";
                mboxes = <0x10 0x0 0x10 0x1>;
                mbox-names = "tx", "rx";
                shmem = <0x11>;
                status = "disabled";
                #address-cells = <0x1>;
                #size-cells = <0x0>;

                protocol@82 {
                        reg = <0x82>;
                };
        };


> 
>>> If I read Peng's submission correctly, it seems to me that the usage model
>>> described before is still fine.
>>
>> Thanks.
>>
>> Sudeep,
>>
>> Then should I repost with the global mutex added?
>>
> 
> Sure, you can send the updated. I will think about adding support for more
> than one channel and send a patch on top of it if I get around it.
> 
> Note that I sent PR for v5.7 last earlier this week, so this will be for v5.8
> 
> --
> Regards,
> Sudeep
> 


-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
