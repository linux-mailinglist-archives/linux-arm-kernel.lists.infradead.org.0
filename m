Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4515F270BF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 22:20:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NJwRxdm4AYLHvY3jOh3O54fr2NWVYDWohyEEJKzev1Y=; b=VLpcgJLNitdXs3
	0k56RpozA1Sg5EWKLh6530rZx3fAa2i62gptmRW+2f9fr4GgFtQeyBNcME4Gfz70BDjdV7bllowPR
	C1h5mdkf/oLCIlFF60B6HSUnbd1OatbBLE/toAJAWqVqZuIu8Pz7E9BjtrwB6aNE5LJaQIBDK0sZu
	NevSBCeu+CG6vPqjYT85tSTvfSYHRc6nmsXyCyLy7ceuEmJsVBIiR5A0VY5PlbtjGk5nDJieAGe9S
	YxEijqHf0TNlFYEKg0aQC1hqQCLF0DiLkVdYAw39oJeTsXpKpmig6D3lZTyBbY8UM5S4KmZsIRjN8
	FESZEZ36VxfwHLQTE4rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTXik-0000v9-IM; Wed, 22 May 2019 20:20:18 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTXid-0000tz-9D
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 20:20:12 +0000
Received: by mail-wr1-x441.google.com with SMTP id w13so3693616wru.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 13:20:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=hJ3ej8py+Wxc2VlvlHjY1p/wLt20dzwN/+OWPey88w4=;
 b=okwRlntBU/e5X4mU8CUmzNTKs2XHciHl2wuUT5pqGMkObNP67qyaI433fg7oHAXrxA
 ZFztQH57w39AD3fW01Eoz9Sg7I9c3RfnaAX16WH7aLbjyqRWGAmGlWoneqTFvm74LNR5
 9qeeEjZEs/7H6J6KJLHDUeWvEwgCxG067lz6euHyA17EhEKRnxiK5FQQbs3ew+nbPifo
 hOi2WuW0QE7QtgXI6jtFUG3pIhFE47XtP3DTxwewJwB+jcuUKu5XhNZkGKwsHjzGEQZf
 e9i6RVehYBi4HSpQ+37DhD2hugVQ7GsjnHZdm4MPmBOyNa8pqhXlPXzXNexutX6VBVkj
 zh/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hJ3ej8py+Wxc2VlvlHjY1p/wLt20dzwN/+OWPey88w4=;
 b=mRWCwpVEGBaqX7Z64PqAqJ09kcOBfTQZ5Csuga9S6ttiqZ/VuSxAYNDFns//hSBgGS
 U7jEh5UYkAfzb2Kmi+nkTOkFpicWoB1kvcCbzMYAjanp3BfvmAo2uKG2neWP9eQlgGuD
 HAvqFGtVL8pmwcj6ESDvWzbgsQGasXuFEKlIy2bHB0u6qhUACq7sn61MRWRcu1n5i8Lv
 eeZGleWzRQbTwpYQUFKBjUvcL9m6dPnbC014Z9DsesqTG1e813Iac0qBAMSxxK+jdWts
 N3vBjQXI7nBdaCCGUIPU51aPaGjexmrnM9TLwiv3rKo3aAPiCx0vOwfMfuJZ2uE+9aLc
 B9wg==
X-Gm-Message-State: APjAAAXgCAJvFiOj6KHvpf+16RU0tF7grU89Wup5EH8lpBQCgc5zwFy3
 nAFMN68yPs/C09hrI1L38w0=
X-Google-Smtp-Source: APXvYqxDZmQjYjYbsKSkIyAXGUGxumciwy7DHsXsBPbF76xPyEEQ9fvSgLgcYUta8wO/UjUUMWNoxQ==
X-Received: by 2002:adf:f9c3:: with SMTP id w3mr9446188wrr.271.1558556409448; 
 Wed, 22 May 2019 13:20:09 -0700 (PDT)
Received: from ?IPv6:2003:ea:8bd4:5700:3029:8954:1431:dc1e?
 (p200300EA8BD45700302989541431DC1E.dip0.t-ipconnect.de.
 [2003:ea:8bd4:5700:3029:8954:1431:dc1e])
 by smtp.googlemail.com with ESMTPSA id v5sm51881143wra.83.2019.05.22.13.20.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 13:20:08 -0700 (PDT)
Subject: Re: [PATCH net-next 2/2] net: phy: aquantia: add USXGMII support
To: Florian Fainelli <f.fainelli@gmail.com>,
 Madalin-cristian Bucur <madalin.bucur@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Andrew Lunn <andrew@lunn.ch>, David Miller <davem@davemloft.net>
References: <110a1e45-56a7-a646-7b63-f39fe3083c28@gmail.com>
 <2c68bdb1-9b53-ce0b-74d3-c7ea2d9e7ac0@gmail.com>
 <46a141c7-f838-ae4b-4a47-5b1fb44ef063@gmail.com>
From: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <e7a7c38c-ebe7-1cea-4099-3cf3a4483ac7@gmail.com>
Date: Wed, 22 May 2019 22:18:32 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <46a141c7-f838-ae4b-4a47-5b1fb44ef063@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_132011_349245_A0CB9F62 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hkallweit1[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hkallweit1[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22.05.2019 22:07, Florian Fainelli wrote:
> On 5/22/19 12:58 PM, Heiner Kallweit wrote:
>> So far we didn't support mode USXGMII, and in order to not break the
>> two Freescale boards mode XGMII was accepted for the AQR107 family
>> even though it doesn't support XGMII. Add USXGMII support to the
>> Aquantia PHY driver and change the phy connection type for the two
>> boards.
>>
>> As an additional note: Even though the handle is named aqr106
>> there seem to be LS1046A boards with an AQR107.
>>
>> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> 
> You can probably split the DTS changes and the PHY driver changes into a
> separate commits and just have the DTS changes come last? With that:
> 
To split the patches I would have to do:
1. Add USXGMII support to Aquantia PHY driver
2. DTS changes
3. Don't accept XGMII any longer in Aquantia PHY driver
This seemed to me to be too much overhead considering the very small
change.

Just making the DTS changes a separate patch would break bisecting.

> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
