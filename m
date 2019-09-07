Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3AFAC722
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 17:02:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5NNYDhS5kLh1sUpsYqyVHkUwxGqE7e91FZUp3THbmn4=; b=dm8YNKcAzF8uaI
	+OE3S2wxD/B9cT+5s1eWogzmivWeh5pNZyrJBT3OUMn+4ACjIX8EyqxtJA5OGH3hXxbpYZX2+kjGh
	WskruxbJTG3ePMRCXfV8KhoZI9rO8A7R+v39/Mp5mKdr0QUqZ76Auz+JNY1h7734HA2sytG+4C9vq
	kk43SC+RYjJMjlyH4D5spUs04uROVF2jLBSVGDO9US3xW4Ku4/+7VPWRLJfyw+wfiYUOJ9Z0Cg1aM
	wNOekqurXR4p/2h/e+NsU48J8sQKLY1izocpCjZcg4ekh4l8KYqoCmp/tmrQOAnlJdIrTR+zOZf+e
	6tharQEZiidC6bDWJr7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6cEi-0003L2-FK; Sat, 07 Sep 2019 15:02:48 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6cEE-0003JU-6k; Sat, 07 Sep 2019 15:02:19 +0000
Received: by mail-ot1-x343.google.com with SMTP id g19so8485407otg.13;
 Sat, 07 Sep 2019 08:02:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vQuUa7SD4x8TPRd4rEMdVFipQdAElSjSwWznDJwYZRs=;
 b=TtZYR2EFApgjge1T6n3joQtpMqyYmTxuLma+kCVNN7wn/Td2sozX4uMMJyJOBh7cW4
 kuejU+OweVVkrAGmTKoS9jy8O7VSEzhwrKsu/XQYz4JGiLlb4/v9Oj2K61iItcV03uxD
 XGbdCpzAYDZDHIfItszdiml7ALRrPBQy7oYrMe1M0q9v5OmefhcPQP6bdBjS2OFHuIHp
 s2aIyVQhQV7q5e5QDOqkOc5hFXeTww48b2ucrRtyI2y5k+8+dElAjTG39dpzMzVHV+ZF
 8mGjwrC0tO9qU5v86blecaWHXjKJC2KfzoeW8mWAmuyr6tKzygm8r2rBxPtqpw1GAF8z
 ByfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vQuUa7SD4x8TPRd4rEMdVFipQdAElSjSwWznDJwYZRs=;
 b=Ynq96QsQD82Vczd0pybUOzJuyUuOn6kxiaXvewQ7LWfDxABl61gjwkxeqJ/+SEsS0M
 aRg8Hw703dj9FSA7ZY0l1F5gCJdUlEiMClQ5G9iPrPzcsRTMujKdvi7w2S4E4/lucPby
 YNUFj2ERZ0qY3yq1+v+hhvL70mLf2c4fNGRxrh5HkcVKowxK/jNuSXkHzMJ18KNMw6eD
 ql5Wu3voQ42Ss9oV0NgWLEaosbzBgfm75zmy/cIZCSN8W7TV2kxZcb8QpasU12mJkPul
 WN9/HyuYevSRIvxMtVn+Zqb6eLbKeXmoX2bg3KOaXWtqjVoANtygH9YCFNGqZo75Cpgo
 GWoQ==
X-Gm-Message-State: APjAAAX12RBblrOxec+qelpe80JFk9dxoEpovnrWsUYFWHK7kbIirqb9
 wxdewpKmrZMl3X+f2UWdztM3ZWk+CK4eLKdeETw=
X-Google-Smtp-Source: APXvYqzw933n7nrVPDE4QwDETJQm86n4LQrpvyL7WcPRzCKuuvqnDMkVghSGxwDP0EhrM2T8GOZ8diF0Pz2476G3pcE=
X-Received: by 2002:a9d:5c0f:: with SMTP id o15mr12429347otk.81.1567868537282; 
 Sat, 07 Sep 2019 08:02:17 -0700 (PDT)
MIME-Version: 1.0
References: <1567667251-33466-1-git-send-email-jianxin.pan@amlogic.com>
 <1567667251-33466-5-git-send-email-jianxin.pan@amlogic.com>
 <CAFBinCBSmW4y-Dz7EkJMV8HOU4k6Z0G-K6T77XnVrHyubaSsdg@mail.gmail.com>
 <be032a85-b60d-f7f0-8404-b27784d809df@amlogic.com>
In-Reply-To: <be032a85-b60d-f7f0-8404-b27784d809df@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 7 Sep 2019 17:02:06 +0200
Message-ID: <CAFBinCD7gFzOsmZCB8T1KJKVsgL7WMhoEkj3dRzyqwAnjC0CNA@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] arm64: dts: add support for A1 based Amlogic AD401
To: Jianxin Pan <jianxin.pan@amlogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_080218_251978_E87EC31F 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 Qiufang Dai <qiufang.dai@amlogic.com>, Rob Herring <robh+dt@kernel.org>,
 Jian Hu <jian.hu@amlogic.com>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Tao Zeng <tao.zeng@amlogic.com>, Carlo Caione <carlo@caione.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jianxin,

On Fri, Sep 6, 2019 at 7:58 AM Jianxin Pan <jianxin.pan@amlogic.com> wrote:
[...]
> > also I'm a bit surprised to see no busses (like aobus, cbus, periphs, ...) here
> > aren't there any busses defined in the A1 SoC implementation or are
> > were you planning to add them later?
> Unlike previous series,there is no Cortex-M3 AO CPU in A1, and there is no AO/EE power domain.
> Most of the registers are on the apb_32b bus.  aobus, cbus and periphs are not used in A1.
OK, thank you for the explanation
since you're going to re-send the patch anyways: can you please
include the apb_32b bus?
all other upstream Amlogic .dts are using the bus definitions, so that
will make A1 consistent with the other SoCs


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
