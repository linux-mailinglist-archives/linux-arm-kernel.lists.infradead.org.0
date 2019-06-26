Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C8A5662E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 12:04:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OOWuftSbxhhQsCitoaKlbU4alT52tsXQe7WlXvKODTA=; b=Vb3y5cWZUJv06M++O83crzvqA
	YnCqHQCWu3HiTrpOgvzaJMNYMl0R0kfvgKztMR48hSGLTI8wWtBRRNtQW9ee2VwJmjuDmwUb8T4sx
	HAFcaBaeO/9lffUzlAni9XnFFGRWMz8YPKllGfoyhr1V6UIgG6GPAA3S4Zr3ih0QxCDh+7NgRks0Q
	J0HauvyuZA2Zlyl3OFdw4ky+tJ5S0Cpl99++w57yJeSibENzCHHTr7ME6f1frjn0QJ2jWioJH5d7P
	4YraPI97UenF69OLvc8H3icic7jk5guCy+5fMAUsGIWlyQ6wQNDdlW8fdLN7NR3BQvjXux1HcNSbC
	hVQsSfepw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg4nS-0004Z6-7m; Wed, 26 Jun 2019 10:04:58 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg4n9-0004Yn-Pg
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 10:04:41 +0000
Received: by mail-wr1-x441.google.com with SMTP id p11so1996808wre.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 03:04:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=DAN43uuPUhSD65xME2BDQL8hTnyJIpJuqXPTSWCAAwk=;
 b=eUm1p7YKPsdH6Yy0qlLgawjhpGFPZyBJFtsJdfSziwWOSt7DfyiN1TnM8f0+YUYVO6
 zs2hYbYPaHsfxLfp2RFEMfIz2nL4/DK9JZxcoWjXszoMzhADV2teLcfR8LLXZ6lfYdyX
 D5iq4zewvrsFYkwp9lfuF+NYDmy+QGlUgnfOEn7X4qJ2QwUwkLuoQxGDh/h7v/4m+/gC
 5k8kOYPMulgi/He1Q6njVpgtScUUxkfi+LK4YbXKOBXZjqpIFHT4qBljxMJ4YwGlgltf
 NCS8+AA6ex5R6Vc9v/+xZKLqNtV6QI52KE4rFIdMCDL2XceQ/Mp9BcktOl7viD/hxo5b
 BSoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DAN43uuPUhSD65xME2BDQL8hTnyJIpJuqXPTSWCAAwk=;
 b=J6mg5rNd5D9fok4h0dBAXRReBV9Kw80mA78974/sjnU0zIaKRZdtvdBYqaHdfLV3tN
 XaNGgCHSJKh2x4bds8dhr3kiV2JRdEQJ/ZiziBF4nZOFreBeeiT46BbzqrrOL0t0IhwT
 7/ys3aEu2dpz/SRCBdxox2rqHGBAhF4KfAZ3FE5ybPQnGQ0MW9cQFhwTHMH20v8DEx4D
 50cVuuecANCe11O3TMwpWz3VsB0Of9bRicxXLBOp+9IqG/7Eb5du3cIU8l2Sc2zjY94H
 j6g0r259pvB3Ag2nV5sT+IfpDtgEj5ABCyEiGwE9yWIyxzl9dZT+P0YxfjQO04VjlZck
 0+mg==
X-Gm-Message-State: APjAAAVq71rAN3cWLk8bOLUo6aA5MEt3oN9RE2DCEHnqnaVyzXJdX1x6
 1ggJGVJagNwqXpAK1C/js3TZfIUNZaU=
X-Google-Smtp-Source: APXvYqxAb5O93B70o0tVtA3bicXqQvCg0hJRZcXydatN5l/RB6AOb0kg0Zw0gXToElLw8MeaQA+TWg==
X-Received: by 2002:adf:efcb:: with SMTP id i11mr3101870wrp.188.1561543477720; 
 Wed, 26 Jun 2019 03:04:37 -0700 (PDT)
Received: from [192.168.86.34]
 (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
 by smtp.googlemail.com with ESMTPSA id i25sm22997156wrc.91.2019.06.26.03.04.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 03:04:37 -0700 (PDT)
Subject: Re: [PATCH RESEND] nvmem: imx-ocotp: imx8mq is compatible with imx6
 not imx7
To: Leonard Crestez <leonard.crestez@nxp.com>,
 Bryan O'Donoghue <pure.logic@nexus-software.ie>
References: <41a273f30656ac1a699b1f130cd701f00177b0cc.1561542673.git.leonard.crestez@nxp.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <41a59647-9357-21d9-dd35-87b337940eca@linaro.org>
Date: Wed, 26 Jun 2019 11:04:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <41a273f30656ac1a699b1f130cd701f00177b0cc.1561542673.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_030439_839897_11235C5B 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 26/06/2019 10:53, Leonard Crestez wrote:
> I don't Bryan's series in linux-next either, maybe it slipped through
> the cracks? Consider this a gentle ping.
Thanks for the ping, I did miss this indeed!

--srini

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
