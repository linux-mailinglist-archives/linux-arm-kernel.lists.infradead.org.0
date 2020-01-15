Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 648C413C22D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 14:02:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CHWNJo4F8sYDlNBp2lejYMJb7XxGf8fCGMXZMNYKz94=; b=kzG2bbclUjlCV5
	YvMjU5SjwMrzD53vbxYY57Gyvc5hX/maSWeP5ixqtIGqDGk2IYdmLmfSlq1ZuhREAJ0ufTGlETfQ8
	WBUK9vxjwu8ylFjj2IgWYRVsEAsVyTgAuYkOzXrhsvyP8S7iKiaa1mG9oxdxzwCbNSlOJT77JaEvw
	qkRLXX40TyJ1kOq8tPhE7/esY9inqMVBmhTzM2uYq9EXGDvxNAp1c3MZ7vSdL1deCI5fsEuCRGVLD
	BXUoUqOcet2lEej6LmQZ2y7ooc8eg56TRmJajOQF2utN78RnGsAkfZDcNsbVX92W+vA2tRjEjB/gR
	+124uE2WlgbE+X3D25VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iriJh-00044r-F7; Wed, 15 Jan 2020 13:02:37 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iriJT-00043D-Rk; Wed, 15 Jan 2020 13:02:29 +0000
Received: by mail-wr1-x443.google.com with SMTP id z7so15606183wrl.13;
 Wed, 15 Jan 2020 05:02:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Dd/fpZjUl0bvpdYK2/HoiWMjO/ltnHe3ct+x9nyIfFk=;
 b=p3MkQlYTQj+lULTBr6mWn5nKzLDUF5GJ9cat1feO+Q3nCwwmKt7aJRqL3jb8Xypk6t
 5K3Zyc5pjjBItrPOQkjZpSi+P+SBB6aY9ZSoI7Dkwuczv7HnBk9NKnzWO91rxXupd4A1
 ucnu3R3CAPXZQAGX0XU+Lt/U7EgARw1EwYbNZ8/cul9gYaEeW00ZQ5+lB3iIFdGO5wa8
 zg+4xaiTNx+kSKfvHbOTyQhwokkdI1VaCx0nGVZcC6v/EJ3+8Q6YoTiur4K5TW8vWdV3
 rHxz6NYn2z0u+1WamRmX0on1wJU/FN1ZzovgHY9f4qsArULVd2M/p6dKrDnfrgJFVjdD
 OKyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Dd/fpZjUl0bvpdYK2/HoiWMjO/ltnHe3ct+x9nyIfFk=;
 b=lGOalSv1bWMer3tkhObaN/2FkXMjrsSoDH1ICBfI5rod3+QuO6UgPPFBdbIN5gXXNH
 8okfHByhWJmIoa2qpYLOA2Bkq7wRWgVaMvUerk1UxX3vl7MvtSb6YNdtHspgSlp37l/L
 2XhtF5IIII0Wn1qZz0ZmKEXQvyxdEeZxUHuCcU0BtwdjGMORewdeaWI+h/K1HMPCgE7/
 NE9LaD9OjXLyl84v++1VbPVxUIZQO9ja473XOJz+inwf/sjl+Si16y17Fz+Z887KkA5/
 XGQCEXgh785p6Oknk8sOrXQ6S5POwIIJlJJxngTc5QMS7kVsNg0UeVejOmoCcTtTJZm8
 ISig==
X-Gm-Message-State: APjAAAUit3+2vbghAG+FB9LCsClqozT3ktf0rAWs20qL+zRQL8HrhsIE
 VooEvLDugeOZ649oJEXayWkTmgjM
X-Google-Smtp-Source: APXvYqxcOwmlY+O6QGUZ/kxCeDj2gNn1kTWrnJRjeqw5YwD9D/edsH1lRUE34oPl6X1lmo7nvZDggA==
X-Received: by 2002:adf:fa12:: with SMTP id m18mr30163062wrr.309.1579093342407; 
 Wed, 15 Jan 2020 05:02:22 -0800 (PST)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id p26sm22390808wmc.24.2020.01.15.05.02.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Jan 2020 05:02:21 -0800 (PST)
Subject: Re: [RFC PATCH v1 1/3] dt-bindings: mmc: combine common mmc and
 dw-mshc properties
To: Rob Herring <robh+dt@kernel.org>
References: <20200114213809.27166-1-jbx6244@gmail.com>
 <CAL_Jsq+8X0oRykiQOKVyaxis4H0yO=nzUtnFF_BXdwBkuigr7g@mail.gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <12bbbdbc-027e-90de-fd57-291013167b06@gmail.com>
Date: Wed, 15 Jan 2020 14:02:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <CAL_Jsq+8X0oRykiQOKVyaxis4H0yO=nzUtnFF_BXdwBkuigr7g@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_050223_920432_A379CC86 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, "heiko@sntech.de" <heiko@sntech.de>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Thank you for your explanation.
I was not aware that was playing.
So now we go from a 'simple' txt to yaml conversion to a complete
'change your node name first' operation.
Can you indicate if that common yaml file for dw-mshc and Rockchip
is still a good idea?

Thanks


On 1/14/20 11:06 PM, Rob Herring wrote:
> On Tue, Jan 14, 2020 at 3:38 PM Johan Jonker <jbx6244@gmail.com> wrote:
>>
>> Combine the common properties for mmc and dw-mshc in
>> mmc-controller-common.yaml
>
> Commit messages should explain the why, not what.
>
> AFAICT, the only reason is to not have a node name of 'mmc'. That's
> entirely the reason why it is defined. Fix your node names to use the
> standard name.
>
>
>
> Rob
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
