Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C5CB115A89
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 02:09:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8OZ3qwVmTC61QE8TjozmRJiF8qitujxfROTMOlrjm9U=; b=hDh4ntrC5ajaGaM3CIt+7GWAN
	sIdfSCHazME47Oy9UIgrVC2cAB/2BE8xFBbdo0bemnekvgVh/l9vAJwa3Zq3PSPDW2pWJQd+yfFU3
	9amv8x2339noJRrP23pBxDhRRZRptWGGd8oJ7e7VajM9hAgJmF70hWWnqM+OjrGyQ+dXyGgzJ44Bf
	Fj7IINrP2ORRcxUFHyFCOguvnMADNrTvfg6nnNOAfBGias3o97t+xOoEmNDwfdOKbiRpgbYVMebn/
	V7XqAH/4aKdMsV7gcfC6lew5mJgbmZEFBjtEiRS+dZMXAs2HVn/todWwDqnbLuwxLCN4BxXTSYVLS
	hWexX8wbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idObY-0007X7-SQ; Sat, 07 Dec 2019 01:09:52 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idObO-0007Wb-8E
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Dec 2019 01:09:43 +0000
Received: by mail-wm1-x342.google.com with SMTP id c20so7638080wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Dec 2019 17:09:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=yD+Kc1w68swJeTB/Vxg8esU+QpTKf/Y2rxrM02hsM8E=;
 b=erVUUFtB6mpxaavF/Ysp04B0vSbTaHZdphEw6PTLPxx4Jh1Lr2T0Jk8GcojtMGgxI3
 DBrW0+V6iZJe3f8YfhDCKupEhidu6nFRAn3EgPh/iKNjplr7NjNrVYW9yeieGHE8n8B6
 82lbOmdaJ/+WYpSO8E560+uoe6p3ly2WEZ9B4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yD+Kc1w68swJeTB/Vxg8esU+QpTKf/Y2rxrM02hsM8E=;
 b=mbdqRj2EcxGTA7nMfdZX5NylHKOP0Q4FdB4sRNmb9CASwiiN9el7k3ppAe5tfXA3j5
 TBP9R3OnlvhkK/soLdyOw421fP9nJBQhDJHEaaaQmwBJxHPB4w+BT5rTMaVdzl8vMc0T
 ZVi7cGwfOQ/kq5UVMNCuyHtpV917UZJpmXUEp6GP3BdRqA+vhYPrJfxO5a2fsHH5ZqIx
 NeS0TqTCB7oKkB6P6hgO4MMn53yY7DxMGbxZMCW1jPwMO73/ChhcHkUZLnXywmBUHH2r
 SruY/vZaYp4PFf9IGiIanKCvjaWsl0q06ubCd2iXurUp6GPnplGifX2ZVLutnbnUmRj7
 gvlQ==
X-Gm-Message-State: APjAAAUM/pE9laqcz2VZj1yPnLP5Rmusa67YBitAM3iGrv614TzkZlK9
 mU/Yjv+1rOHzBbFL2WeYKhVL7IK4WTLo5Q==
X-Google-Smtp-Source: APXvYqxObGo3CZK1oMZD8K04TAdbPkiFZl31iS0EfNlkm/zzbTK+0LJdmEc/w156VyiqFzklzdlVMA==
X-Received: by 2002:a7b:cbc4:: with SMTP id n4mr12296535wmi.118.1575680980554; 
 Fri, 06 Dec 2019 17:09:40 -0800 (PST)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id d14sm18881353wru.9.2019.12.06.17.09.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Dec 2019 17:09:39 -0800 (PST)
Subject: Re: [PATCH 1/2] dt-bindings: soc: Add binding doc for iProc IDM device
To: Florian Fainelli <f.fainelli@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
References: <20191202233127.31160-1-ray.jui@broadcom.com>
 <20191202233127.31160-2-ray.jui@broadcom.com>
 <62254bbb-168e-c0ad-a72d-bd659a2c23fa@gmail.com>
From: Ray Jui <ray.jui@broadcom.com>
Message-ID: <0f0e965b-2e57-8b6b-0c72-1a1008497793@broadcom.com>
Date: Fri, 6 Dec 2019 17:09:34 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <62254bbb-168e-c0ad-a72d-bd659a2c23fa@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_170942_293780_50D62865 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12/5/19 4:09 PM, Florian Fainelli wrote:
> On 12/2/19 3:31 PM, Ray Jui wrote:
>> Add binding document for iProc based IDM devices.
>>
>> Signed-off-by: Ray Jui <ray.jui@broadcom.com>
> 
> Looks good to me, it's 2019, nearly 2020, maybe make this a YAML
> compatible binding since it is a new one?
> 

Sorry I am not aware of this YAML requirement until now.

Is this a new requirement that new DT binding document should be made 
with YAML format?

Thanks,

Ray


>> ---
>>   .../bindings/soc/bcm/brcm,iproc-idm.txt       | 44 +++++++++++++++++++
>>   1 file changed, 44 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,iproc-idm.txt
>>
>> diff --git a/Documentation/devicetree/bindings/soc/bcm/brcm,iproc-idm.txt b/Documentation/devicetree/bindings/soc/bcm/brcm,iproc-idm.txt
>> new file mode 100644
>> index 000000000000..388c6b036d7e
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/soc/bcm/brcm,iproc-idm.txt
>> @@ -0,0 +1,44 @@
>> +Broadcom iProc Interconnect Device Management (IDM) device
>> +
>> +The Broadcom iProc IDM device allows control and monitoring of ASIC internal
>> +bus transactions. Most importantly, it can be configured to detect bus
>> +transaction timeout. In such case, critical information such as transaction
>> +address that caused the error, bus master ID of the transaction that caused
>> +the error, and etc., are made available from the IDM device.
>> +
>> +-------------------------------------------------------------------------------
>> +
>> +Required properties for IDM device node:
>> +- compatible: must be "brcm,iproc-idm"
>> +- reg: base address and length of the IDM register space
>> +- interrupt: IDM interrupt number
>> +- brcm,iproc-idm-bus: IDM bus string
>> +
>> +Optional properties for IDM device node:
>> +- brcm,iproc-idm-elog: phandle to the device node of the IDM logging device
>> +
>> +-------------------------------------------------------------------------------
>> +
>> +Required properties for IDM error logging device node:
>> +- compatible: must be "brcm,iproc-idm-elog";
>> +- reg: base address and length of reserved memory location where IDM error
>> +  events can be saved
>> +
>> +-------------------------------------------------------------------------------
>> +
>> +Example:
>> +
>> +idm {
>> +	idm-elog {
>> +		compatible = "brcm,iproc-idm-elog";
>> +		reg = <0x8f221000 0x1000>;
>> +	};
>> +
>> +	idm-mhb-paxc-axi {
>> +		compatible = "brcm,iproc-idm";
>> +		reg = <0x60406900 0x200>;
>> +		interrupt = <GIC_SPI 516 IRQ_TYPE_LEVEL_HIGH>;
>> +		brcm,iproc-idm-bus = "idm-mhb-paxc-axi";
>> +		brcm,iproc-idm-elog = <&idm-elog>;
>> +	};
>> +};
>>
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
