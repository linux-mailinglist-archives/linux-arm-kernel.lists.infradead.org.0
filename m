Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 662AE88565
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 23:59:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/qRG9CftzI6BGAaqPBlue7W11Lv44k2lxHinbW+ij1E=; b=EYejkRoKpIS9Pw
	JnqQRqGqDNtIzPtsuGil74ML/MWOkUrRdDIPyX84ZFF6A6/7L10RA1rqlgmxLbK2uZYg6IUR//71V
	2a4UMGZdqOzzcoz8nFYqi5QUuH+Ag2GSoNJY8yIy6wV0jggQ0EZSPIkofUewOH3Ik7DW1YvnN2/i4
	0+gygU+WHYZSqS3rRPRCFpSurZAgWm1ynu9GcgoJ/sNd0sOX9ftFGzGIo7g5NzWAiubllFvajIZ6q
	Rft89ByCphkHwLkL+TTAyVqvsnimHVOFSaI6r7EE4pE3fjqidmpo1CP1Lkhjd969WHv2f3Y3DD2ud
	84Si69YEhYel0Wn2nPgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwCuz-0008A1-OD; Fri, 09 Aug 2019 21:59:25 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwCur-00089H-QQ
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 21:59:19 +0000
Received: by mail-pf1-x449.google.com with SMTP id 191so62281926pfy.20
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 14:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=aHPozI+kRmLZ/MJlV7luwBtUMjEIFkgoeCnOJismWTA=;
 b=XmhQBsfMHALmx6QOLM9UBumnO7+O8bCcXOWfbEhvnKPRZtyZjK8Tox3QlWh+5SsoHo
 nSFWQ4AXRB5rGt1kt3KE4aQEc1I3c3lRuL9npZ/+GiDm5vL+RU7MnPYmUFcMbJyKb6ra
 WcTRcRm2FQ6DDaHqNyLsrOSB632i+21o8ygllWidqV7vliACQwXLx06D5cWErjUfEvvk
 oS6tlLYGXRIUWgi8FZPNnxObKBs0OQf/b3sPOwVn84irLt21e12rwexZf1dIbzAlT4UU
 pC9A8HRAZ1JoHP5xAxw+zFJ7gBhI3E9LOkogGnAloitRhXpmiawVE738kNJQ2UpHPLsi
 ecbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=aHPozI+kRmLZ/MJlV7luwBtUMjEIFkgoeCnOJismWTA=;
 b=m1T22764nJwgWwkgj30IAp1GEjx5CnP+8tej7ZFg2IIW4IIzg9GFk8NPh4x5YkLU9c
 YHHGI14y1Hetk823rH1lnswblhH02l69Ag57b7Dfc7I3HppkoIzpkBW7GoIY5xjFtF3b
 iWdgz84EguoZJh76UQ8joV+rEdQ7Y5wibM5qBd2DmuCO95ZzIR6IribZ3O09CLZGceVf
 wc33nc+ye2GZ7RiBLOzra5z4MVlz03fmBso+7T8ouOUohbu2o9+vN2h2pAYgGwWrk7tm
 XWxyksM+q2CRtYVDSgyxy8ffL1MldwBsoC4+hYIUO2CW5MwDCdconTVUJkEgHTPMZ9Ph
 loBw==
X-Gm-Message-State: APjAAAUsYq5xQQ2Dwj8V1MCQsukg9UrDQDxYxj6VILg2uEAsGGS3zy9T
 dvuSAvo7ddTTdcr41IFWoYA9hX62Iw==
X-Google-Smtp-Source: APXvYqyz8CcNShPWSHPO/FAxHKFz6gmTSkkw/fYF/3ATwxbLzpgLwoS9L+u1s86mqzbQrSNfPjRKv0frajw=
X-Received: by 2002:a63:bf01:: with SMTP id v1mr18841445pgf.278.1565387955717; 
 Fri, 09 Aug 2019 14:59:15 -0700 (PDT)
Date: Fri,  9 Aug 2019 14:58:48 -0700
In-Reply-To: <c7ac79dd-c15c-6edf-153f-71dd8f754a93@arm.com>
Message-Id: <20190809215848.47736-1-yabinc@google.com>
Mime-Version: 1.0
References: <c7ac79dd-c15c-6edf-153f-71dd8f754a93@arm.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: Re: [PATCH] coresight: Serialize enabling/disabling a link device.
From: Yabin Cui <yabinc@google.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_145917_883724_AA3A3CB3 
X-CRM114-Status: UNSURE (   5.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Yabin Cui <yabinc@google.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>You may also want to protect the refcount checks below with the same lock, just
>to be consistent.

Good suggestion! I didn't protect it because I found other places using refcnt.
But it turns out they are not link devices.
I have uploaded patch v2.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
