Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C92631C4AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 10:27:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F62Bi0n6br/YytlVUsOr316WkBVHxuRVdaE2qJwFvBo=; b=UmNMpq6Xqo0Voi
	bLhQa2eU+wZvGDHjtevI4MPSZMGYS61jWBoOpj+YsbKWu0sBr3KVOzxUMOYD5REDzlrJh4zRUigcw
	ugSOS73iYeQNlk8YaCP5Jsl/34dJVz6dKEle66QLZG1SfOxuJx5mLyY+fsBOnrPulZjGc1HO5EAI/
	JL3hjSckTCebWt5H18kXTUExoAXIBVIj4hp4S1k9M4olQ30HoqIj4DqlmptBTgO0qOEPYIK8bsv7r
	sh1r72UqMkXzNNUjBW18HfEdzmtCfW/wMUZSlT920F/wU46ZIBSJfuwvU4iMn42ge86LfckXBiaKY
	GvVBVVaA5o1IoK2aOrgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQSmD-0004YD-LA; Tue, 14 May 2019 08:27:09 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQSm1-0004U5-Bn
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 08:26:59 +0000
Received: by mail-ed1-x544.google.com with SMTP id l25so21619117eda.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 01:26:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8pF0Ay0b8Dgr2gdGhko9AZ082vGA43NgkUHSE5gdgZI=;
 b=OgduG/cMoh/3Sc/Gxac9dWTtWdVzzhFzEWOo95wV8BHwox3PuUmIk5DfLw+wrNKHFB
 jklYPI1DcXqo2DsLHuQmmG8YsjwEXNmaBTc4wNPoGxlRfPMS75lojToepR9tV6tBq6JL
 QCZBAzpEJ84AMXugniFV3xZ/S5ERhM65zI2tUmy8YzJkvRSi1PqlbVK4eymKbz0r2STD
 M+r49IJVSHzKJ6/syq4E3EBoXrE9uhAUGmqnr7hZXqHUC5+CMnHClRhKpvzlIK1ZiSv0
 felmRjiC/ujBmPn9IqF8Z/2BPaDts1CQSOwrXi+nV+EQNFnz5cb2n7RUEz/Wgsvfrixf
 10mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8pF0Ay0b8Dgr2gdGhko9AZ082vGA43NgkUHSE5gdgZI=;
 b=ZoTl/fBTjPBHT3Uy5hTfrlFhe49kzSPbvuzoZV9P5D2ZhK9j3lyyflDrGexUFcY1hf
 AkEHYOQ7jeqgq93t/tB/P4YX/UFvDadsoivHzPJYmLbAO+AgiHdL6XEV6nDV+zTcNGvQ
 70taKKnNCsXixd6rAcY2x8flT408IZBoV/2emP+aC+uKiOCXR5Ze8frCkTaPKNLH/glq
 EK1t6HukAXbiZG3RNM6hB7N26LY5P6Y+j5afnYSdYftmhCwen9SC8VcMRwaDyD3YBV5R
 QDb4BuW6NtsKUYwmbcLm8Yk170e46btZv4jBm4GhEJKC9anLbKQ6A/X5p2jYqaGg4awG
 YBhQ==
X-Gm-Message-State: APjAAAW2vqmhB0zne2i7KyrJ8v6wkUDyJBjwCaKg8cuhVWOi4czN/J8j
 NTJ0/DiEimfaUBzCCm4EfqNB7SnU1nqA1u6SNEE=
X-Google-Smtp-Source: APXvYqyJwXW1r146kB+f/e6hzh6KUROJ54XMwp/FqVdMFYzgc4rAU//wq4xtndEhJPfjzVSFFS+EgYWH0IITInluacI=
X-Received: by 2002:a50:91d0:: with SMTP id h16mr34769727eda.265.1557822415775; 
 Tue, 14 May 2019 01:26:55 -0700 (PDT)
MIME-Version: 1.0
References: <1557813807-3919-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557813807-3919-1-git-send-email-Anson.Huang@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 14 May 2019 11:26:43 +0300
Message-ID: <CAEnQRZBNHXHvUu=90DZQzZHM3gp6sABPPbh5yfGQrrd5jdCRhQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mq: Remove unnecessary blank lines
To: Anson Huang <anson.huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_012657_421434_8E7F337C 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "angus@akkea.ca" <angus@akkea.ca>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 9:09 AM Anson Huang <anson.huang@nxp.com> wrote:
>
> Unnecessary blank lines do NOT help readability, so remove them.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
