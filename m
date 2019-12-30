Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BAC12D143
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 15:53:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3lh+e0GWgD9xpeglTMxQ5AMRA36xPi5wmgsZJUm/RiI=; b=CSHZUNIpGUD4A8mgSdXJ6xvmjm
	B8Co8NJmfie1VVfxMegmszcSV/7ndlbbyvXqa95Sj2oFj2ruLarToq7tU97SBLcjozjEpnUw4qsjg
	1MdMq60VCBA3svw7SmuHdAeSRbefLKav4m8WVCEu9SYTnfoY3QxKE03E/8zD1arbYbnRocZ3yRf3Z
	lUOf6VwglsYYmpqNaklY4z+6Lqf94gFM6V+vcsEzMM+ngHw2qAEHCb2zTpqQzkKoaom7eE3c3cmbg
	6XF/BPN2lbiHQzyJPTdePOevAwk13DjG106x+8sBE8KAjhNGud5zcOxrGnRlcUec+FSVAn4B0lr1U
	+jvkoiig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilwQO-00076X-36; Mon, 30 Dec 2019 14:53:40 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilwHW-0005Ot-N6
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 14:44:41 +0000
Received: by mail-lj1-x242.google.com with SMTP id u1so33494812ljk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 06:44:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+SgAM3h033e/MLAOZ0d/dorO2oxTfoGPJAEbgrUK1sA=;
 b=TZ7puyOxM+yGMbc3OGs6XvJX2K3hv/kDgeQIRnULYOGBMEJf7MAYGjYEzFkRBHtmQq
 IPa0AzJ36KUXkdzKzwmlplSKsccO970rx5ZZ3m9v+Upw5gJBovxtKLmxzrx/oYtAF/6J
 D5OXvUSkffHvEGQQ77aW9k1QG8eGDi3q1Z9xZH7gNWN4Xo/Bk1SqhvBHZ+HySpzZN2Hh
 jvljaarakC0NGmGNMx/Of1925O2nOinjCd93Ysjf4/e5zhvKfsHScC7nur/jO5RHXC6X
 Fz2b4o+zUWUZR4UhN6WTDZvrWliv8ykVC5+1UMsGrQqKV6Yf8KbR8laDQKfoDH4ozQ44
 HCNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+SgAM3h033e/MLAOZ0d/dorO2oxTfoGPJAEbgrUK1sA=;
 b=fgsd/7TYe9RpvadDOR+vEeV2MbwgD7btA6RtPbCgq51xNeKCZrclYAv437TjB55yhk
 +T4g+SUVf47gDFDUN6TYxisCK2AtpHM4HRlK64vpWX3d/stLpmbC3KOn7/1vewBi23Wn
 D7UggA+h/dP2g4US/sc6EbEgeyeUpg5t3xXCfFv4x/Ww7/48jXGb9DxXl0upg9b59a05
 GpZMugoh9mAidG6Pi+UT8n0UJHRyB49lvGqyYWEyGc85GsNlHZaIt/prQU5FRLsk/qHB
 +Wgae3FxlMOhqRzMdB7F30bmqlYOkL8ZEnokamJDo54lrcy8EHgxHTqqudUSCb9+Vb8w
 P4HQ==
X-Gm-Message-State: APjAAAX8djC5igmrUkg9JTMoXEn/AOb5ascbkw5J+A2f2Ta3nXFaB+BP
 go09DtknJJFE+IldxqDwe3Pfew==
X-Google-Smtp-Source: APXvYqwtFgk8DWwJIi01w0yOiYq/bVEMrpa/+7NeIkZiIuoO5wszwt+ezEkxoN7XmPdMpQ4zt6kx3g==
X-Received: by 2002:a05:651c:1077:: with SMTP id
 y23mr38549803ljm.79.1577717069205; 
 Mon, 30 Dec 2019 06:44:29 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id a21sm18744931lfg.44.2019.12.30.06.44.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 06:44:28 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: [PATCH v5 13/15] PM / Domains: Introduce a genpd OF helper that
 removes a subdomain
Date: Mon, 30 Dec 2019 15:44:00 +0100
Message-Id: <20191230144402.30195-14-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191230144402.30195-1-ulf.hansson@linaro.org>
References: <20191230144402.30195-1-ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_064430_893499_71993554 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We already have the of_genpd_add_subdomain() helper, but no corresponding
of_genpd_remove_subdomain(), so let's add it. Subsequent changes starts to
make use of it.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes in v5:
	- New patch.

---
 drivers/base/power/domain.c | 38 +++++++++++++++++++++++++++++++++++++
 include/linux/pm_domain.h   |  8 ++++++++
 2 files changed, 46 insertions(+)

diff --git a/drivers/base/power/domain.c b/drivers/base/power/domain.c
index 8e5725b11ee8..959d6d5eb000 100644
--- a/drivers/base/power/domain.c
+++ b/drivers/base/power/domain.c
@@ -2302,6 +2302,44 @@ int of_genpd_add_subdomain(struct of_phandle_args *parent_spec,
 }
 EXPORT_SYMBOL_GPL(of_genpd_add_subdomain);
 
+/**
+ * of_genpd_remove_subdomain - Remove a subdomain from an I/O PM domain.
+ * @parent_spec: OF phandle args to use for parent PM domain look-up
+ * @subdomain_spec: OF phandle args to use for subdomain look-up
+ *
+ * Looks-up a parent PM domain and subdomain based upon phandle args
+ * provided and removes the subdomain from the parent PM domain. Returns a
+ * negative error code on failure.
+ */
+int of_genpd_remove_subdomain(struct of_phandle_args *parent_spec,
+			      struct of_phandle_args *subdomain_spec)
+{
+	struct generic_pm_domain *parent, *subdomain;
+	int ret;
+
+	mutex_lock(&gpd_list_lock);
+
+	parent = genpd_get_from_provider(parent_spec);
+	if (IS_ERR(parent)) {
+		ret = PTR_ERR(parent);
+		goto out;
+	}
+
+	subdomain = genpd_get_from_provider(subdomain_spec);
+	if (IS_ERR(subdomain)) {
+		ret = PTR_ERR(subdomain);
+		goto out;
+	}
+
+	ret = pm_genpd_remove_subdomain(parent, subdomain);
+
+out:
+	mutex_unlock(&gpd_list_lock);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(of_genpd_remove_subdomain);
+
 /**
  * of_genpd_remove_last - Remove the last PM domain registered for a provider
  * @provider: Pointer to device structure associated with provider
diff --git a/include/linux/pm_domain.h b/include/linux/pm_domain.h
index 5a31c711b896..9ec78ee53652 100644
--- a/include/linux/pm_domain.h
+++ b/include/linux/pm_domain.h
@@ -284,6 +284,8 @@ void of_genpd_del_provider(struct device_node *np);
 int of_genpd_add_device(struct of_phandle_args *args, struct device *dev);
 int of_genpd_add_subdomain(struct of_phandle_args *parent_spec,
 			   struct of_phandle_args *subdomain_spec);
+int of_genpd_remove_subdomain(struct of_phandle_args *parent_spec,
+			      struct of_phandle_args *subdomain_spec);
 struct generic_pm_domain *of_genpd_remove_last(struct device_node *np);
 int of_genpd_parse_idle_states(struct device_node *dn,
 			       struct genpd_power_state **states, int *n);
@@ -322,6 +324,12 @@ static inline int of_genpd_add_subdomain(struct of_phandle_args *parent_spec,
 	return -ENODEV;
 }
 
+static inline int of_genpd_remove_subdomain(struct of_phandle_args *parent_spec,
+					struct of_phandle_args *subdomain_spec)
+{
+	return -ENODEV;
+}
+
 static inline int of_genpd_parse_idle_states(struct device_node *dn,
 			struct genpd_power_state **states, int *n)
 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
