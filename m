Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30BC913C3D
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 00:38:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZLuJIxzVoTqTw3DA3930vMQr8cfqZgYPKfkfkMTTsNM=; b=YDfF47mAaDxqndt35Vplf4Tvp
	l034/Te0l+zTg3nce+Y55IuKndTCR43iUqJrokuOOI7p8M7zjrqi1v5VvgvkXIi6VJpJCItXMWN5u
	TKFyQc8sg7gld0KG0ETnKSgyNoIlVub3ok/4Tw9qeF/Uowh2aKLYOMi8G+5KJXKuHsFlxbhV0wSk1
	Pf+1sf3d0UkRlLuVO/PSF4EQTUe0VNxAe4hVeF5mK8FbKP0IuLvKwAVWbvzvwoJqAmWYAqheaANzw
	hvc3yFFUVR7LdgO2Dngo59DvbLKIyv4XfKMyl84tvsWU3E2zLhKkN7vsQ6usDnJqNcdhzzJLvopXa
	LOFQU79tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hN3J0-0000vg-Ki; Sat, 04 May 2019 22:38:54 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hN3It-0000vJ-JP
 for linux-arm-kernel@lists.infradead.org; Sat, 04 May 2019 22:38:49 +0000
Received: by mail-ed1-x541.google.com with SMTP id m4so10604524edd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 May 2019 15:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nexus-software-ie.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=6dsdDQMlW00FuJC/0AlP/jbQxRyXKp1k3RgqJwWLklQ=;
 b=zKaYKzhUxWmZoHBOeE9gHwL97lq4zCcOAhu8mn2n8S/jimQQGFp7FZHjp9x0TOqv5j
 na5A+gapv+KPXnKOiHLOMbRe8OFxFAmJedpEww0WuvU9Dmt7tnxAgm4oQdMvPkqhCWqq
 P31VeHz3tk9OWcUAOVC9oNI6Xao65blXshRJLDO1Ofum6fiXnYGQr7GthZfU+cgsr+hm
 nTaeiCkXdr8+lN9mO88UFzfIAVQmoKHuZ67b9k6IY5r0jCCIzTGQfVLMHsEst/SpDLJK
 Dou8F8tru84AI3Sz+A/Q5D3fp64BELvIeJqzP61yUzRREKeIZmsBl6s7WB+kUSmOjbwC
 Egjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6dsdDQMlW00FuJC/0AlP/jbQxRyXKp1k3RgqJwWLklQ=;
 b=me8IHVUna2Ad2L4Ft809SX6GCLq3iWX9qBSxITTnVZhDaF/0uieIu5BzQsg9dJTyb6
 NLVEs0IlTcbTsLWlikoFKI+0QQLnOAmsa8H/vVUC7xF35B9MUd3wE3Wp8kw6PdwR9sm8
 oqArD8yHNwUCQxQtioVYb7OvY0eYauU9e7pDffdSHghHOI5QZ+Nh8q9HHQ4YdiFJ3H/3
 killS0OgN0ykfFrkAqXFcEDNRXlJioPBtomloLrOEhdUWxKR27vTwKLOkaPUupjZ+85x
 JqkXu3ioE8md2UKOm832Qt/YFcoHHH9rH4c239Rx8hlz0J1Y3LO85kFGMiha3vxYJi5p
 rvsg==
X-Gm-Message-State: APjAAAUhcC4MEoiSRbRa1/zbeVOjp/YqjfgdyTMg36qhGdqanm+LfV89
 b1QUl6bTkv1M1Vmhnvrbup0KFsIjWhE=
X-Google-Smtp-Source: APXvYqwP7fxIzuRdgNT1rfXlxc5OPrSYVb3gD0HOdLQTyNwfEwQyydd0KWI4iQbfDOQ+EIdLJO+tkQ==
X-Received: by 2002:a17:906:c52:: with SMTP id
 t18mr12523193ejf.53.1557009522808; 
 Sat, 04 May 2019 15:38:42 -0700 (PDT)
Received: from [192.168.192.38] ([80.111.179.123])
 by smtp.gmail.com with ESMTPSA id p21sm884470ejo.15.2019.05.04.15.38.39
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 May 2019 15:38:41 -0700 (PDT)
Subject: Re: [RESEND PATCH v6 0/5] Add i.MX8MM OCOTP support
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Greg KH <gregkh@linuxfoundation.org>
References: <20190503165342.30139-1-pure.logic@nexus-software.ie>
 <20190504083939.GA1859@kroah.com>
 <d67c692d-9e4f-9d08-12bc-ab3644fbaa8c@nexus-software.ie>
 <2e9d5ed8-eeeb-4829-734c-fa418d99bfeb@linaro.org>
From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
Message-ID: <1397f626-f74c-1289-2c05-3dd7deb80bb8@nexus-software.ie>
Date: Sat, 4 May 2019 23:38:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <2e9d5ed8-eeeb-4829-734c-fa418d99bfeb@linaro.org>
Content-Language: en-US-large
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_153848_053373_231BBA4A 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devel@driverdev.osuosl.org, aisheng.dong@nxp.com, peng.fan@nxp.com,
 abel.vesa@nxp.com, anson.huang@nxp.com, linux-imx@nxp.com,
 kernel@pengutronix.de, fabio.estevam@nxp.com, leonard.crestez@nxp.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/05/2019 18:10, Srinivas Kandagatla wrote:
> Normally I don't take patches that are sent after rc5 into next merge 
> window. Unless there is an urgent fix. In this case I will be applying 
> these series to nvmem next branch once rc1 is released for 5.3 merge 
> window.

Great, that'll done fine Srini no rush.

I sometimes do a round of pings of outstanding patches I have to make 
sure they don't get lost in the ether.

So long as its on your radar that's good enough.

---
bod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
