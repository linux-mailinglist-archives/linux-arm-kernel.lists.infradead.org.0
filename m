Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCCF5191152
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 14:42:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K4l0DCd45GtlQcV9qkVML3+ePYiWQ3hkxCZq/qYC/PI=; b=Ot+qYdU2tKCNuu
	jPLbiAkeKYcXvAtBRurjtpewvKbkfcOHu552fqGejPWhy4hZXWHN9T2e7P7SbYfGdPmMqRxLDXiWE
	3C8pmqLKvhOxqPUw5pIWcYizrtL8cM5cTuyUerK4WWeJ84FmZKwevwLMlyO2nY+v40+ediDfTqFJq
	k1tRIFXIRa8KrUy6EqFHUfSaS/KQsezv17w2V/jNT31cg4Kz/qXhCjyN/Fml0tbz5KC4E3q8mzMWC
	Pxo6mtRfw4BdITLSi5VQDuE+Td+GoFhgrOg3vKpTX50Wdzp/eOguBPl397xTRl92TZW0cJiRGS8dC
	xWEJiPV1XP4Pv4xp9pGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGjoi-00049z-5m; Tue, 24 Mar 2020 13:42:04 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGjoU-00048b-2q; Tue, 24 Mar 2020 13:41:51 +0000
Received: by mail-wm1-x344.google.com with SMTP id v25so1393544wmh.5;
 Tue, 24 Mar 2020 06:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=uAuhnpcorA/aoHo7Ikv4cyMAQQ+803f7lVgbulzW1FA=;
 b=AJBjrMd/1WefHvD9tC2VIx2ZOHNAhs5ei/dRqGhoQ+xHhEWFzRtAPXIF+2EQSCNsil
 IYP+NCFB54M8Siyg2oE1SZncCp/zDRSKgZd3BgdVOrJxkbaZ9LzI+YF2VBPXuQXGirKP
 d1hV0URs2NnrTFFCiZdmR/XvsyJiQefUroToumZlA1Ovq/lxiGOY9gm1kUNxTPAQ/Ble
 hEKrfSfcVL6rJg65U9dShGBKaFs/OCfBjQoq0Zv/bOTU1ornTJspd7nlkZTDr6TL38mx
 fl6miirZIwnVmc/f2+hMuFa7bxRd9GzqCWXxy3XfkZQjkcZEoZGhJmgttRXQejYnJYTI
 roHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=uAuhnpcorA/aoHo7Ikv4cyMAQQ+803f7lVgbulzW1FA=;
 b=Ml6fM2tgbqQoIdAR5Vw5Qt4/Z3rGoOJUAjD61ovNxdU4OgIRO80q/X03NqmtAaZtfz
 JUqrIYLyz0bgHuVQYj/HJn6P1PFDE90SWdGtRofctvd3q/K9y17cR93tELkYTU++5Av0
 r3XXz5J2wNBXb+xkTY5tfngTaMOX3Fz4EIVVnxflxZA2rl5iaWkw6w972H70ttmC9/3V
 CGeHvPNS7EbKT+d+YcmRXtbuSHvTTqzW+YIVoJQ+INmq38HVNxOpfSZleLY+f8bwqnjq
 sNrgjv7nz0hj/efW4NqfbT45aL5z/2C0dhVKBND99FeiDnhxFlh7kiYBsd6XgIA+Btri
 ohFg==
X-Gm-Message-State: ANhLgQ3Ubz6PmwkND3cqye0vB35VY2g0hpZAQ1Nl/L1E4nXp4sqj5JpO
 Sa/OTMtdC/OWAeN7HyY92Zs=
X-Google-Smtp-Source: ADFU+vvFoLChVg+kcqF5i+tj7Rhdcb7vjdP06Fu8Z1e/SDrcul0CpOiMUPThAQcr3KXGQ/qMa93EEA==
X-Received: by 2002:a1c:ba06:: with SMTP id k6mr5507351wmf.136.1585057308561; 
 Tue, 24 Mar 2020 06:41:48 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f9sm29768962wro.47.2020.03.24.06.41.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Mar 2020 06:41:47 -0700 (PDT)
Subject: Re: [PATCH v2 1/3] dt-bindings: sound: convert rockchip spdif
 bindings to yaml
To: Mark Brown <broonie@kernel.org>
References: <20200324123155.11858-1-jbx6244@gmail.com>
 <20200324133506.GC7039@sirena.org.uk>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <d1225b12-b3d1-3cc7-be0b-8f834e8b08ce@gmail.com>
Date: Tue, 24 Mar 2020 14:41:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200324133506.GC7039@sirena.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_064150_150638_DC3C3FBF 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org, heiko@sntech.de,
 lgirdwood@gmail.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

Today I send 2 sets. One for I2S and one for SPDIF.
'power-domains' is added in respons to robh answer to rockchip,vop.txt
conversion.

>> Hi,
>>
>> Question for robh:
>>
>> In the old txt situation we add/describe only properties that are used
>> by the driver/hardware itself. With yaml it also filters things in a
>> node that are used by other drivers like:
>>
>> assigned-clocks:
>> assigned-clock-rates:
>> power-domains:
>>
>> Should we add or not?
> 
> Yes, only pinctrl properties are automatically added.
> 
> We could change 'assigned-clocks', but for now I think they should be 
> added.
> 
> Rob


On 3/24/20 2:35 PM, Mark Brown wrote:
> On Tue, Mar 24, 2020 at 01:31:53PM +0100, Johan Jonker wrote:
>> Current dts files with 'spdif' nodes are manually verified.
>> In order to automate this process rockchip-spdif.txt
>> has to be converted to yaml.
> 
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>> ---
>> Changed V2:
>>   dmas and dma-names layout
> 
> This is the second v2 you've sent of this today - it adds these but
> drops Rob's ack?
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
