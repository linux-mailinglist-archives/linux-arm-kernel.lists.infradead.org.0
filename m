Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACCDC20D2F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 18:39:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A9mScTHkQ66VKtG48yvgd832L3sv3ajAgT+WfNKAs/A=; b=In4a6+PtE2aRD1
	eYpWwcXVB5tP5WUVh3EMJJr+GxVZ1Ctj+520jf4wkgVRHRJ5tE4jfOvItZMgnikKv/WyYDew8vtEZ
	hSfN4jkXK49WxqUjLlZQ7vIMMYF/dgSfejBgo63Z97OXaBnZ8p2jg3FkKMBoLcdHKDnzYxBMFGTqX
	NbAa4cbNb8CbMGWKEHZLrhVNPoeFEeSgvVq8GbVRx73PhWnK1+m53BOTUj2+ZoaIqvW/oJM1Zj0YH
	YCYQCbL1xF1J7JCFArHPo6tQzrjCeJ9qahID0Ku2/3pNuKbJc+Rn9bCIILGfLOFcpLD5PbkUoyhGw
	yagv0yVXFAGiE583eylg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJPz-0005MX-Pm; Thu, 16 May 2019 16:39:43 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJPq-0005IQ-3p
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 16:39:35 +0000
Received: by mail-wr1-x442.google.com with SMTP id l2so4123072wrb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 09:39:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=+cXLOi+8ABA7BGrxU3vUXmn2m+alrWUU3E1Q8nvV1CE=;
 b=hM1AiciCPdeN92B0g/CQZQHRvJ35jT0diBinaBf8JPtnfPYksAWCu/5RKgq7PgfmZx
 A0lK3rieYyiPaXsN1hr5ouS1CTaR9lZfj/KIL2cwmfK+njxSHpH2jajyfqYIP71nPDnK
 7eNGxMWSXkMN85MQ0jrSHZVha2VbIObLJCZbTlxM2lGUOepAzu7LXIEKiESQyl37FEvQ
 +r7kbeVg9CaaRy6hM+ct3rpZAVCCXa/3F1+tWmjadHXkB2JizI9J6hIS8e9+t9eR/Bpc
 urW6QyTR8W0uHdIC0ZDcDQQb+tLK28zrJ2EdtkUYB8r67V/MZEhdNj2zYTjOF539aUL4
 BgkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=+cXLOi+8ABA7BGrxU3vUXmn2m+alrWUU3E1Q8nvV1CE=;
 b=RTj81sni3/9STRFytqKbF1lD3giq59p7RsvZGEzvEFpJx2AGNvuYWu5tJCDrnwIRYv
 vuDuddWxtTIDm9NQJtflggzRAEgKEfZoTA/E+0N7J9fGm5GbWze8KMvrZU1hENhvksXI
 njXyhKwvPIL372YNoHViAhgiHrx8pftmRHut5QDrROocBAxJSrmwpDT/AkCfE9EvX/7x
 +iIvP5BrNEuwV5wYylDMnyM3uUnjZ4lDJCBMPKCW9opFMI1S0n5Ybp8RfMxjncpRHKJR
 nsRiN2Wm3YW34CIjEA010MF+VomJKTSVO0QyxyYauEC6Utft7KEb/Pe0eh/jHSLjcteR
 HLpw==
X-Gm-Message-State: APjAAAVDrKFtBby1+blge0DmO8cbsJGi/gHLvroRIAFtmZly1Rw8txOk
 asfKjCjYyGkid43+pIpcXzpmSg==
X-Google-Smtp-Source: APXvYqzujauFHDoLc/in9LTN+7HLQ5/SBKHCrzZMBpDZ3qyrEmaS3kuc9igghD1by4HMoa1ZJUNzQA==
X-Received: by 2002:a5d:618b:: with SMTP id j11mr31799601wru.36.1558024771576; 
 Thu, 16 May 2019 09:39:31 -0700 (PDT)
Received: from localhost ([2620:10d:c092:180::1:e504])
 by smtp.gmail.com with ESMTPSA id z14sm3818382wrq.22.2019.05.16.09.39.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 09:39:30 -0700 (PDT)
From: Loys Ollivier <lollivier@baylibre.com>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [RESEND PATCH] gnss: get serial speed from subdrivers
In-Reply-To: <20190508155341.GA1605@Red>
References: <1557322788-10403-1-git-send-email-lollivier@baylibre.com>
 <20190508155341.GA1605@Red>
Date: Thu, 16 May 2019 18:39:24 +0200
Message-ID: <86y336l5fn.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_093934_188419_7554B41D 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Johan Hovold <johan@kernel.org>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Colin Ian King <colin.king@canonical.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 08 May 2019 at 17:53, Corentin Labbe <clabbe.montjoie@gmail.com> wrote:
>> -/*
>> - * FIXME: need to provide subdriver defaults or separate dt parsing from
>> - * allocation.
>> - */
>>  static int gnss_serial_parse_dt(struct serdev_device *serdev)
>>  {
>>  	struct gnss_serial *gserial = serdev_device_get_drvdata(serdev);
>>  	struct device_node *node = serdev->dev.of_node;
>> -	u32 speed = 4800;
>> +	uint speed;
>>  
>> -	of_property_read_u32(node, "current-speed", &speed);
>> +	of_property_read_u32(node, "default-speed", &speed);
>
> Hello
>
> of_property_read_u32 use u32, so no reason to use uint instead.
>
> Regards

Hello Corentin,

Thank you for your review. A v2 has been sent:
https://lore.kernel.org/lkml/1558024626-19395-1-git-send-email-lollivier@baylibre.com/

Cheers,
Loys

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
