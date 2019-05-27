Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 871472B9D4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 20:08:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uclu6UfvI4HxcrFj8nPkztIytJyIyRXd2oJ6RUZqUnw=; b=LozvXtqTiuKiFj
	QPGvXg2CXJT1064GoVrFfAYb0I3TVOub2tZwEuTYbuQk2e9+FLVku/PWo+PQ+ojUnd+zx7lLVOL+y
	z+K4q9aUtM5ttanZvrgD6qNMabIT3xLWQUuxHn57hpO7c627ZW03j3M1aU7Qz4rf6V4ugX9kjJwv5
	3rMRUvY5soDWCZMuB7e9D94HnHzVxhipPRCbjDNJc3dN5j8Kjvk3/kbhuL2q8tVGY3TfPAEDDfP8W
	/YarrT9w4/TypwwCfOuDCpbJgRbfDHbsmE/ICtCWJH4ESuBUqyOUCQ5rsMmw95l7QcPBvDLYx7SFM
	2IKbsNR8Moh7krG7YW7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVK2P-0005B5-1x; Mon, 27 May 2019 18:07:57 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVK26-0004mW-VZ; Mon, 27 May 2019 18:07:42 +0000
Received: by mail-ot1-x343.google.com with SMTP id u11so15485672otq.7;
 Mon, 27 May 2019 11:07:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pgdAS9QmA+kymmNkQFCc70wQxZNKe+LAPHfdbYWWNfs=;
 b=RdiX+5x97w6OwJDSWefjcNdvbOMuBwDoYzdemIbi1EC9zJY/jnJxjq73rbhPUy5Gp0
 5WcerhbzlpmR8zxHrLCmMNTD0AwH4OziEYn2lGl+CvWL58RXUvfAHVxAraZg+gQ+dvQo
 0XNeO96gK+zlOa5WVuhJjfgRP9auy6lUqQDYRwCbD5pnfj5lxLJdu6jvbUgKrXFjJlcy
 WLXe2IOIhKfDcra2vZlEenW1HThjLw4og2SLQP1wxPhcrzgi+H+iFrqzs1VlQO+oF17W
 3fpk5k7RmMbYga4hDydvtqMA2OAaE79u28vhaEscZatdQ3X0iBX+SzuLSAgnw7CgUJkX
 QSmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pgdAS9QmA+kymmNkQFCc70wQxZNKe+LAPHfdbYWWNfs=;
 b=oBFKXnytCBY/axY8Z6HzcAyyi1T0aNGZQd0LHa7hgzJNlFQMSYlTGaJTs/TXkfW5DW
 W4qmFaZz7GTDZ8PxK832nfxYCDganTBUa26ZX2cuaV63PsqZMc0SQlmGdw6eMIJqwMWb
 os5koWaKMjGlYQRxgOJPwnT1d44JYbRfybI7HTranJKHNRxA32Rg99L++6R2F5uAeP7+
 rGNr0Z7xRGsipbchC81uEl2W49hFwgIhEClfnN1XS6kumm+gvyfVg8kPKON5QX9HIicp
 QcnSy92GaRkHI1+g8nueHdir4HVK9HEWwyE1xvmZ2DtljG4xiaiJz3gOLltYzFLlqplX
 nodw==
X-Gm-Message-State: APjAAAUEDMDrE86bf9VhJMuM0A5RS789FkYwDjMDbHGYRe8MVYY5y02q
 fQPLoi2rAAoigIlAk8s1U+BWENxGAA9b/TM9FWU=
X-Google-Smtp-Source: APXvYqyAOgJ6VVk72xMf8ZhSixSYxxi37uMWq89IE4E5NvqQ/aeeb41CgR4FNVUgkOF/sHyiicjwCR6Kz4EyMPOQ2ns=
X-Received: by 2002:a9d:2f08:: with SMTP id h8mr71815029otb.42.1558980458177; 
 Mon, 27 May 2019 11:07:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190527133857.30108-1-narmstrong@baylibre.com>
 <20190527133857.30108-8-narmstrong@baylibre.com>
In-Reply-To: <20190527133857.30108-8-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 27 May 2019 20:07:27 +0200
Message-ID: <CAFBinCB4Ss6S7L2J6j_gVW3yFVW6puysGPD+xDO536-g15uquA@mail.gmail.com>
Subject: Re: [PATCH v2 07/10] ARM: dts: meson8b-odroidc1: update with SPDX
 Licence identifier
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_110739_602817_4088C58E 
X-CRM114-Status: UNSURE (   8.29  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 3:40 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> While the text specifies "of the GPL or the X11 license" the actual
> license text matches the MIT license as specified at [0]
>
> [0] https://spdx.org/licenses/MIT.html
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
