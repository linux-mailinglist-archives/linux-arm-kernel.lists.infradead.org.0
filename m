Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E881CDE13
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 17:04:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6DQB1ytSp7m/A7927OkIpafpx1nMLXkCKt5xw7JTz9g=; b=Y9hx6W0Kis3H9PtmLy/ohLWJX
	W/i6KJ906QHk1N5z/bHVHk1VYm781B5FMgFDDqTct/dLUqp+iC8k1uFvlTL0mBM48xvKSf6XlVjkq
	4avZsblLQxNOPeUCxFtwSOtSPVRjhroWOhpbU3nIbUHqvCHvtd2RWuosIjwp6lq4nimlKDXqBhPb8
	6f2QmmBlMnq2u0SE7lyzefRYiksTDJddzIjUPKfPk7JNW8drbF8AQTSdc7ij3elrZs7aAKRzrliZ/
	UAo4XPvUrinb7klP7OFebmfxWKcdGPQMJzPwjnlkj4A0KdRlhFvMNFikOx+SUMZlY3fzwNL+tk77n
	Cnky6YPwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY9yD-0007Zp-VQ; Mon, 11 May 2020 15:03:53 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY9y6-0007YY-Qq
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 15:03:48 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 3CEBA7F2CD3F1CC8B4DC;
 Mon, 11 May 2020 16:03:44 +0100 (IST)
Received: from [127.0.0.1] (10.47.0.142) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1913.5; Mon, 11 May
 2020 16:03:40 +0100
Subject: Re: [PATCH RFC v3 02/12] perf jevents: Add support for system events
 tables
To: Jiri Olsa <jolsa@redhat.com>
References: <1588852671-61996-1-git-send-email-john.garry@huawei.com>
 <1588852671-61996-3-git-send-email-john.garry@huawei.com>
 <20200511110137.GC2986380@krava>
From: John Garry <john.garry@huawei.com>
Message-ID: <9f4ea413-325f-98b4-eb4c-e47aead4f455@huawei.com>
Date: Mon, 11 May 2020 16:02:49 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200511110137.GC2986380@krava>
Content-Language: en-US
X-Originating-IP: [10.47.0.142]
X-ClientProxiedBy: lhreml705-chm.china.huawei.com (10.201.108.54) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_080347_020004_22D23D2A 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [185.176.76.210 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, irogers@google.com, ak@linux.intel.com,
 qiangqing.zhang@nxp.com, peterz@infradead.org, robin.murphy@arm.com,
 linuxarm@huawei.com, acme@kernel.org, linux-kernel@vger.kernel.org,
 zhangshaokun@hisilicon.com, alexander.shishkin@linux.intel.com,
 mingo@redhat.com, namhyung@kernel.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/05/2020 12:01, Jiri Olsa wrote:
> On Thu, May 07, 2020 at 07:57:41PM +0800, John Garry wrote:
> 
> SNIP
> 
>> +				      &sys_event_tables);
>> +		}
>> +
>>   		print_events_table_prefix(eventsfp, tblname);
>>   		return 0;
>>   	}
>> @@ -1180,7 +1253,6 @@ int main(int argc, char *argv[])
>>   	} else if (rc < 0) {
>>   		/* Make build fail */
>>   		fclose(eventsfp);
>> -		free_arch_std_events();
>>   		ret = 1;
>>   		goto out_free_mapfile;
>>   	} else if (rc) {
>> @@ -1206,27 +1278,31 @@ int main(int argc, char *argv[])
>>   	if (close_table)
>>   		print_events_table_suffix(eventsfp);
>>   
>> -	if (!mapfile) {
>> -		pr_info("%s: No CPU->JSON mapping?\n", prog);
>> -		goto empty_map;
>> +	if (mapfile) {
>> +		if (process_mapfile(eventsfp, mapfile)) {
>> +			pr_err("%s: Error processing mapfile %s\n", prog,
>> +			       mapfile);
>> +			/* Make build fail */
>> +			fclose(eventsfp);
>> +			ret = 1;
>> +		}
>> +	} else {
>> +		pr_err("%s: No CPU->JSON mapping?\n", prog);
> 
> shouldn't we jump to empty_map in here? there still needs to be a
> mapfile, right?

In theory we could only support sys events :)

But I'll now make this a (empty map) failure case. And I think that 
another error case handling needs fixing in my patch.


As for this:

  +	fprintf(outfp, "struct pmu_sys_events pmu_sys_event_tables[] = {");
 >> +
 >> +	list_for_each_entry(sys_event_table, &sys_event_tables, list) {
 >> +		fprintf(outfp, "\n\t{\n\t\t.table = %s,\n\t},",
 >> +			sys_event_table->name);
 >> +	}
 >> +	fprintf(outfp, "\n\t{\n\t\t.table = 0\n\t},");
 >
 > this will add extra tabs:
 >
 >          {
 >                  .table = 0
 >          },
 >
 > while the rest of the file starts items without any indent
 >

I'll ensure the indent is the same.

BTW, is there anything to be said for removing the empty map feature 
(and always breaking the perf build instead)? I guess that it was just 
an early feature for dealing with unstable JSONs.

Thanks,
john

> 
> jirka
> 
>>   	}
>>   
>> -	if (process_mapfile(eventsfp, mapfile)) {
>> -		pr_info("%s: Error processing mapfile %s\n", prog, mapfile);
>> -		/* Make build fail */
>> +	if (process_system_event_tables(eventsfp)) {
>>   		fclose(eventsfp);
>> -		free_arch_std_events();
>>   		ret = 1;
>>   	}
>>   
>> -
>>   	goto out_free_mapfile;
>>   
>>   empty_map:
>>   	fclose(eventsfp);
>>   	create_empty_mapping(output_file);
>> -	free_arch_std_events();
>>   out_free_mapfile:
>> +	free_arch_std_events();
>> +	free_sys_event_tables();
>>   	free(mapfile);
>>   	return ret;
>>   }
> 
> SNIP
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
