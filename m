Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E889E1BC13A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 16:29:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ofOJeBsunbm9EsvVp8/5OVCaaOTCR0knnnxfSI5JkJE=; b=kcBold3arlZlMt
	6ztACZzmv4C+X+YDWy3GgmJc3sxL0i+kyDUwSxzqL8AzYefuoXlLZydoHVd2UUCudK4vQb8qrOKC1
	jNOkmqzoizzJPZSF7JCnw5TU0W310dfQXlPwMWFYejaaapD155MMbI31tV+HBqSs6Iyq2UGrafIwM
	O+hzkiJEHI6OdNe4zyKBb1MVDhXPkJWKT5xziEj93cM1TKPo3gjj0yaOilh1egYWi3KAxhB05go7Y
	dVTDhj8+nk0VjrwPpls1IItS5R3Xv6/kwsqm9e/C6U2zONHlqyrurTJbS9j3/TMnQlF0sBoIXgioP
	a2Ln59YN7KuXbjsgUJTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTREr-000102-SW; Tue, 28 Apr 2020 14:29:33 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTREe-0000zU-2h
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 14:29:21 +0000
Received: by mail-lf1-x142.google.com with SMTP id g10so16978207lfj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 07:29:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=qS5tY9fAedmAgcO273Iag/IA9q4/QmSGFPGhwHpMWTA=;
 b=w1FB1838aQaTDk66cwscIV59dGjWZ8MVaSwqmCv/pVrtq07SOUllZPBvlpNeHtrIxH
 yJtuPa9svMu1/GUIK09nWsiDqE2E7F7P/+Tk7AxpYlJlIkIPDKNJP6WxhWOXM+Osvm/z
 cgOq/4YzcrUwwjLmwoifmElMQ5s7jXIl3a935e8CojPWRkc1KGL617jsqgT1l9gAwK5f
 UzWL1I2VScsfgwrKDnzE68Pk486p3si1gf30wZO1nR8Y2zcyh4xG3nh6KSoXparUjWNO
 V/kL0FWu2t9qXt5oJ+COdOVdic09dR8aJbCkWumZOQQpGumdTx6LdmPz+2/UfOXCvX7s
 zzEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=qS5tY9fAedmAgcO273Iag/IA9q4/QmSGFPGhwHpMWTA=;
 b=eaBUN6mNsbQnaCIuQVnBQjMSJihXZ03yAMs42yRmxmwyNejsCWWEDiqop8a5K9dPZw
 yfjC217NP4qlRbfbdSbb+r4GAfAsm8Ohs3bz2zGCv7DC92/1hHczOxJeW579dd5qoGUv
 ygi+7rcdj5O7nsTr908JS9vGpehYJX9uuITDtxg1deabul0vCweL2xNZjUVZIR4U5MH0
 kfjstIdKtajk70EYPmAthN/aJ8we51+7VpYFLPVLM7nO9JKD779y4DmNE/CiT+bl4Nm7
 JxlWGQVBngG2rjJcCOMOu+Q4dxtRu3sPrOu4XbShfrEMtMcduQOr/hWD+xNUtgBRJ4KL
 dJTQ==
X-Gm-Message-State: AGi0PuanVuVSjHkotD6fgQlEqN0E7FDHX9lbLAYlRwIlPa90ZTiMjeqx
 FL3UTcfuwKbdIVT2nQnlXynsXZaV1ryDx4rdHgqtng==
X-Google-Smtp-Source: APiQypJy1nFXdOyU7tbuE06RQb3qNZN5Is1YT/V/+ngWM9Tr5SJIp9t6PPr4c/l3OB1pzn1fTcc9dgNCFk9jVjw0qZ8=
X-Received: by 2002:ac2:5c4e:: with SMTP id s14mr19638888lfp.77.1588084157886; 
 Tue, 28 Apr 2020 07:29:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200428115543.33379-1-yanaijie@huawei.com>
In-Reply-To: <20200428115543.33379-1-yanaijie@huawei.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 Apr 2020 16:29:06 +0200
Message-ID: <CACRpkda6gd+7mUDMShgWfGRQ+P1w8tpThr3-BzSMifx7m2pGXQ@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: add pwm37 to bm1880_pctrl_groups
To: Jason Yan <yanaijie@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_072920_148591_736CA135 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBBcHIgMjgsIDIwMjAgYXQgMTo1NiBQTSBKYXNvbiBZYW4gPHlhbmFpamllQGh1YXdl
aS5jb20+IHdyb3RlOgoKPiBUaGUgJ3B3bTM3JyBpcyBub3QgYWRkZWQgdG8gYm0xODgwX3BjdHJs
X2dyb3Vwcywgd2hpY2ggdHJpZ2dlcnMgYSBnY2MKPiBidWlsZCB3YXJuaW5nOgo+Cj4gZHJpdmVy
cy9waW5jdHJsL3BpbmN0cmwtYm0xODgwLmM6MjYzOjI3OiB3YXJuaW5nOiDigJhwd20zN19waW5z
4oCZIGRlZmluZWQKPiBidXQgbm90IHVzZWQgWy1XdW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KPiAg
c3RhdGljIGNvbnN0IHVuc2lnbmVkIGludCBwd20zN19waW5zW10gPSB7IDExMCB9Owo+Cj4gU2ln
bmVkLW9mZi1ieTogSmFzb24gWWFuIDx5YW5haWppZUBodWF3ZWkuY29tPgoKUGF0Y2ggYXBwbGll
ZCEKCllvdXJzLApMaW51cyBXYWxsZWlqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
