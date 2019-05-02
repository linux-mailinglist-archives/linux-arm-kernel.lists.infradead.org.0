Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F001209A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 18:54:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=t5Fkm/uRqRW64ebFRGsyTKQKv57vSKf8EVJQVLrN7xw=; b=m/h
	qeMvquyaIQytDBAeqftmyDe8TXhqrZwaw/4ptr22LIE5Py8UOFDnB/HuLBZ4HZtMnuIaF5rC/ONUD
	OvPvtnDD3RrVk0JZ2LYFACQgRZ/FI2byYpceGvHafrI9Ts9F9ouoBDaWA7QZU8BuXSfmFZMn/N+6b
	dd/1k1C1Q+woqw5J9K+2+mIypePGfwUDHNf4D7drrBM5UbudZl/Hc1G7gTS3Utg+3gN2WkqHqvOtV
	ijefVFRYYvEHVa33ZGGfsxQZsxHrz+QHR5DVnVscBp9P2XE/bWqPf94ng6kNpuu/YWtit34lszI8z
	fw76PP6OY0K4TrpkaxajiBgtkF4AC8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMEyO-0003JG-Ug; Thu, 02 May 2019 16:54:16 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMEyG-0003HR-MJ
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 16:54:10 +0000
Received: by mail-pf1-x432.google.com with SMTP id z26so1415671pfg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 09:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=+hdxvpCXVtGpDJISGPH1holqF4XwrImqrdJb9+2HhCY=;
 b=CrKIZgqRmvuhmRQD/2JgtANStHORnzNgR8StTXldSzdnm/04SIPqkjNG2tnKfTF0F7
 AVxcUgmHLbzdHmW9XnG9sOYoseJrFAvQo7pkgd97/gdSi2f1qk+1ySbJlry6yiTnplIy
 trrXqStm4zO/0L14QA6HSWpsdPJc8jItPcUjrqPIJ8tD13Kc5UTOLR/r0pfIG5H2oRZ7
 AtBki9c/WAP/bkvyo9BKRRKo4WY1vnxBYSOczYBB5d+NESCrDkjhdX7LefeLujHZheoj
 EI8hmelbswwCPlmubCIZ3t3CoiuykKe7axxzlm/xDYl6D9GDG55PZPOSgaJ0Es1o+3l2
 RjaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=+hdxvpCXVtGpDJISGPH1holqF4XwrImqrdJb9+2HhCY=;
 b=Ew34FrP6t/UO8mpqMSE3EdMNmeTpP0ZDXNlZCU8JJ58A3OiE5c0nEYC0WYc7SGaJpS
 olf//EO2Tz7RKuIlM97KTKP70L9l3YcWkMQW+jysychy4Vi9Kv7jpmYXBvLx7enk7pnC
 ca23sNhF7v9VlS0kcUAdIXezT8gprnnsUbxboENIY0n9NIthxfehIxhC+CBz9gcendwQ
 mZ+GWvwoM3HMpycHKetAkI4vOHu2yr5HxgiZk+g+Xz35hga9Prjn/tc7A70qmsVzgvtA
 YFK2ZDKaSKTX43nnW6jHEVAxkvk15IOTPbrImsh1jQoKH+vDSwawYnooetbKTJzOFrYL
 ynrw==
X-Gm-Message-State: APjAAAUydEVEdNoAhnMZZnM2qR/HRd8V235Eu/H/YAnPr3+VfFANnpLQ
 vQUxiqp0ER8y651FCsFXJB3THQ==
X-Google-Smtp-Source: APXvYqyMk7BxKC6gCE857QESGNKupmNDXSr9J09HFerrUAsQIUDKdq8qP4O/VYibZ2Yp3oKUrRjlaQ==
X-Received: by 2002:a63:af0a:: with SMTP id w10mr5016100pge.67.1556816047282; 
 Thu, 02 May 2019 09:54:07 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j2sm69949pff.77.2019.05.02.09.54.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 09:54:06 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/4] coresight: next v5.1-rc7 
Date: Thu,  2 May 2019 10:54:01 -0600
Message-Id: <20190502165405.31573-1-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_095408_789003_ED05BE1D 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:432 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Greg,

Please see if you can add these to your tree for the coming merge window.
They are confined to the CoreSight subsystem and have been in linux-next for
a week now.

We can simply wait for the next cycle if you think it is too late for this one.

Thanks,
Mathieu

Leo Yan (4):
  dt-bindings: arm: coresight: Add new compatible for static replicator
  coresight: replicator: Add new device id for static replicator
  dt-bindings: arm: coresight: Unify funnel DT binding
  coresight: funnel: Support static funnel

 .../devicetree/bindings/arm/coresight.txt     |  60 +++++++--
 .../hwtracing/coresight/coresight-funnel.c    | 116 ++++++++++++++----
 .../coresight/coresight-replicator.c          |   6 +-
 3 files changed, 147 insertions(+), 35 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
